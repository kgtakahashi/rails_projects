# coding: utf-8

class MentersController < ApplicationController
	def index
		@menters = Menter.order("id")
	end

	def show
		@menter = Menter.find(params[:id])
		if params[:format].in?(["jpg", "png", "gif"])
			send_image
		else
			rendrer "menters/show"
		end
	end

	def new
	end

	def edit
	end

	def create
	end

	def update
	end

	def destroy
	end

	private
	def send_image
		if @menter.image.present?
			send_data @menter.image.data,
				type: @menter.image.content_type, disposition: "inline"
		else
			raise NotFound
		end
	end
end
