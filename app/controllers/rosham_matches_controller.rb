class RoshamMatchesController < ApplicationController
  def new
    @rosham_match = RoshamMatch.new
  end

  def create
    pending_match(params[:rosham_match][:from],params[:rosham_match][:to])
  end

  def show
  end

  def update
  end
end
