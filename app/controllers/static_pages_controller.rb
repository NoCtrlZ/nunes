class StaticPagesController < ApplicationController
	def index
		@articles = Article.all
		@contact = Contact.new
		@news = News.all
	end
end