class StaticPagesController < ApplicationController
	def index
		@articles = Article.page(params[:page]).per(4)
		@contact = Contact.new
		@news = News.all
	end
end
