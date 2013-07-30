# condin: utf-8

class TopController < ApplicationController
	def index
		redirect_to controller: "menters", action: "index"
	end
end
