require 'devise'

RSpec.configure do |config|
  require Rails.root.join("spec/support/controller_macros.rb")
  config.include Devise::TestHelpers, :type => :controller
  config.extend ControllerMacros, :type => :controller
end
