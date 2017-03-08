require_relative 'initializer'

class Story < Base
	include ApiRequest
	def initialize
		super
	end

	def response
		get_response
	end

  def add
  	# get defects from qa_complete
  	get_response.each do |story|
  		@labis.create_story(name: story["name"], story_type: "bug")
  	end
  	@labis.create_story(name: defect, story_type: "bug")
  end

  def get
  	@labis.stories(filter: "state:unstarted type:bug")
  end

end

story = Story.new
puts story.response