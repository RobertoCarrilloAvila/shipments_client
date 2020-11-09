class Tracking
	
	END_POINT = '/shipments/'

	def initialize(shipment_id)
		@shipment_id = shipment_id
		@auth = bearer_token
		@url = api_url
	end

	def send_request
		response = HTTParty.get(@url, :headers => { "Authorization" => @auth})
		JSON.parse response.body
	end

	private

	def bearer_token
		"Bearer #{ENV['BEARER_TOKEN']}"
	end

	def api_url
		URI.join(ENV['TRACKING_API_URL'], END_POINT, @shipment_id)
	end

end