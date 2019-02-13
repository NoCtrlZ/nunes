class StaticPagesController < ApplicationController
	def index
		@articles = Article.all.page(params[:page])
		@contact = Contact.new
		@news = News.all
	end
end