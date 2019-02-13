class ArticlesController < ApplicationController
    before_action only: [:show, :index]

    def show
        @article = Article.find params[:id]
        @clearn = Article.where(is_display: true)
        @articles = @clearn.order(created_at: :desc).limit(5).offset(0)
        @contact = Contact.new
    end

end
