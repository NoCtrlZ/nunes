class ArticlesController < ApplicationController
    before_action only: [:show, :index]
	def index
        @articles = Article.all
    end

    def show
        @article = Article.find params[:id]
        @articles = Article.order(created_at: :desc).limit(5).offset(0)
    end

end
