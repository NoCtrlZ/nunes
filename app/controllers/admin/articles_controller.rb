class Admin::ArticlesController < ApplicationController
    before_action :extract_article, only: [:show, :edit, :update, :destroy, :change_display]
    layout "admin"

    def new
        @article = Article.new
    end

    def show
        @article = Article.find params[:id]
    end

    def edit
        @article = Article.find params[:id]
    end

    def update
        @article = Article.find params[:id]
        @article.update_attributes article_params
        redirect_to admin_root_path
    end

    def create
        @article = Article.new(article_params)
        @article.save
        redirect_to admin_root_path
    end

    def change_display
        @article = Article.find params[:id]
        @article.is_display = !@article.is_display
        @article.save
        redirect_to admin_root_path
    end

    def pre_destroy
        @article = Article.find params[:id]
        @article.is_destroy = true
        @article.is_display = false
        @article.save
        redirect_to admin_root_path
    end

private
    def article_params
      params.require(:article).permit(
        :title,
        :intro,
        :ket,
        :topic,
        :text,
        :point,
        :is_display,
        category: [])
    end

    def extract_article
        @article = Article.find(params[:id])
    end
end
