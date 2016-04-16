class WelcomeController < ActionController::API
	def index
		render text: "hello, world"
	end
end
