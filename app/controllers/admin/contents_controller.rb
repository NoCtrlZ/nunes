class Admin::ContentsController < ApplicationController
    before_action :extract_article , only: [:show, :edit, :update, :destroy]
    def new
        @article = Article.new
        render :layout => nil
    end

    def show
        render :layout => nil
    end

    def create
        @article = Article.new(article_params)
        @article.save
        redirect_to admin_root_path
    end

private
    def article_params
      params.require(:article).permit(
        :title,
        :topic,
        :text)
    end

    def extract_article
        @article = Article.find params[:id]
    end
end