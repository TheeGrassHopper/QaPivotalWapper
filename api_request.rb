require_relative 'initializer'

module ApiRequest
	include HTTParty

	def base_url
		"https://qacomplete.smartbear.com/rest-api/service/api/v1"
	end

	def basic_auth
		{ username: 'labis_dev@sonichealthcareusa.com', password: 'S0nic123' }
	end

	def build_url
		[base_url, "projects"].join("/")
	end

	def get_response
		url = build_url
		HTTParty.get(url, basic_auth: basic_auth)["results"]
	end

end