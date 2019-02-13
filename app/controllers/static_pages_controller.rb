class StaticPagesController < ApplicationController
	def index
		@articles = Article.page(params[:page]).per(10).order(created_at: :desc)
		@contact = Contact.new
		@news = News.all
	end
end
