class AdminsController < ApplicationController
  http_basic_authenticate_with name: ENV['ADMIN_USER'], password: ENV['ADMIN_PASSWORD']

	def new
		render :layout => nil
	end

	def show
		render :layout => nil
	end

	def topic
		@article = Article.new
		render :layout => nil
	end

	def content
		render :layout => nil
	end

	def create
		@article = Article.new
		if @article.save
      redirect_to admin_path
    else
      render :new
    end
	end

end