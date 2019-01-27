class Admin::SelectsController < ApplicationController
    def index
        @article = Article.all
        render :layout => nil
    end
end