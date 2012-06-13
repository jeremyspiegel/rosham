class RoshamMatchesController < ApplicationController
  def new
    @rosham_match = RoshamMatch.new
  end

  def base_url
    #request.protocol + request.host_with_port + '/' + match.guest_code
    rosham_matches_url + '/'
  end

  def guest_url(match)
    base_url + match.guest_code
  end

  def host_url(match)
    base_url + match.host_code
  end

  def create
    @rosham_match = RoshamMatch.new(params[:rosham_match])
    @rosham_match.guest_code = SecureRandom.hex(3)
    @rosham_match.host_code   = SecureRandom.hex(3)
    @rosham_match.save!
    PendingMatch.pending_match(@rosham_match,guest_url(@rosham_match)).deliver
    redirect_to host_url(@rosham_match)
  end

  def show
    @rosham_match = RoshamMatch.find_by_guest_code(params[:id])
    @guest = @rosham_match
    @rosham_match ||= RoshamMatch.find_by_host_code(params[:id])
  end

  def update
  end
end
