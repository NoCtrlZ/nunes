class StaticPagesController < ApplicationController

	def index
		@displayarticles = Article.where(is_display: true)
		@articles = @displayarticles.page(params[:page]).per(7).order(created_at: :desc)
		@post = @displayarticles.order(created_at: :desc).limit(5).offset(0)
		@contact = Contact.new
		@news = News.all
	end
end
