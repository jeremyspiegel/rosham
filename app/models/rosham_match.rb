class RoshamMatch < ActiveRecord::Base
  attr_accessible :guest_code, :guest_throw, :host_code, :host_throw, :to, :from
end
