class AdminsController < ApplicationController
  http_basic_authenticate_with name: ENV['ADMIN_USER'], password: ENV['ADMIN_PASSWORD']

	def new
		render :layout => nil
	end

	def show
		render :layout => nil
	end

	def topic
		render :layout => nil
	end

	def content
		render :layout => nil
	end

end