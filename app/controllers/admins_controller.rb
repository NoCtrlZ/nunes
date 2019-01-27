class AdminsController < ApplicationController
  http_basic_authenticate_with name: ENV['ADMIN_USER'], password: ENV['ADMIN_PASSWORD']

	def index
	end

	def new
		@article = Article.all
		render :layout => nil
	end

	def show
		@article = Article.all
		render :layout => nil
	end

	def content
		@article = Article.new
		render :layout => nil
	end

	def create
		@article = Article.new({title: params[:article][:title], topic: params[:article][:topic], text: params[:article][:text]})
		@article.save
		redirect_to admin_path
	end

end