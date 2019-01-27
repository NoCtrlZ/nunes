class Admin::SelectsController < ApplicationController
    def index
        @article = Article.all
        render :layout => nil
    end

    def change_display
        @article = Article.find params[:id]
        @article = !@article.is_display
        @article.save
        redirect_to admin_root_path
    end
end