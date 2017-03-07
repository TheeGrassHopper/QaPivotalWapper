require_relative 'initializer'

class Base
	def initialize
    @client = TrackerApi::Client.new(token: APP["config"]["token"])
    @labis = @client.project(1985519)
  end
end