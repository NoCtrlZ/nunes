class ArticlesController < ApplicationController
    before_action only: [:show, :index]
	def index
		@articles = Article.all
    end

    def show
        @article = Article.find params[:id]
    end

end