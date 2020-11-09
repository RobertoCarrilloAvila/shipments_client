Rails.application.routes.draw do

	root 'trackings#show'
	get 'trackings/:tracking_number', to: 'trackings#show'

end
