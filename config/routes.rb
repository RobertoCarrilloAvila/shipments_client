Rails.application.routes.draw do

	root 'trackings#show'
	get 'trackings/:shipment_id', to: 'trackings#show'

end
