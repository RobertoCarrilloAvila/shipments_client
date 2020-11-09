class TrackingsController < ApplicationController

	def show
		@shipment = Tracking.new(params[:shipment_id]).send_request
	end

end
