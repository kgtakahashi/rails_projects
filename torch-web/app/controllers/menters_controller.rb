# coding: utf-8

class MentersController < ApplicationController
	def index
		@menters = Menter.order("id")
	end

	def show
		@menter = Menter.find(params[:id])
	end

	def new
		@menter = Menter.new
		@menter.build_image
	end

	def edit
		@menter = Menter.find(params[:id])
		@menter.build_image unless @menter.image
	end

	def create
		@menter = Menter.new(params[:menter])
		if @menter.save
			redirect_to @menter, notice: "Saved as new menter!"
		else
			render "new"
		end
	end

	def update
    @menter = Menter.find(params[:id])
    @menter.assign_attributes(params[:menter])
    if @menter.save
      redirect_to @menter, notice: "会員情報を更新しました。"
    else
      render "edit"
    end
  end

	def destroy
	end

	def show_image
    @menter = Menter.find(params[:id])
    send_data @menter.image.data, type: @menter.image.content_type, disposition: 'inline'
  end
end
