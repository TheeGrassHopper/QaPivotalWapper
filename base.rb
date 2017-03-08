require_relative 'initializer'

class Base
	def initialize
    @client = TrackerApi::Client.new(token: 'd336024d737e1efbbf13c50b5c4a59c7')
    @labis = @client.project(1985519)
  end
end