class Admin::ArticlesController < ApplicationController
    before_action :extract_article , only: [:show, :edit, :update, :destroy]

    def new
        @article = Article.new
        render :layout => nil
    end

    def show
        @article = Article.find params[:id]
        render :layout => nil
    end

    def create
        @article = Article.new(article_params)
        @article.save
        redirect_to admin_root_path
    end

    def change_display
        @article = Article.find params[:id]
        @article = !@article.is_display
        @article.save
        redirect_to admin_root_path
    end

private
    def article_params
      params.require(:article).permit(
        :title,
        :topic,
        :text,
        :is_display)
    end

    def extract_article
        @article = Article.find(params[:id])
    end
end