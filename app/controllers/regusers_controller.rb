class RegusersController < ApplicationController
	def index
		@users= User.all
	end
end