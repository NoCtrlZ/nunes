class StaticPagesController < ApplicationController
	def index
		@articles = Article.all
		@contact = Contact.new
	end
end