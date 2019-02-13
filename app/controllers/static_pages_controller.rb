class StaticPagesController < ApplicationController
	def index
		@displayarticles = Article.where(is_display: true)
		@articles = @displayarticles.page(params[:page]).per(10).order(created_at: :desc)
		@contact = Contact.new
		@news = News.all
	end
end
