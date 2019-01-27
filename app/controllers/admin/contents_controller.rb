class Admin::ContentsController < ApplicationController
    def new
        @article = Article.new
        render :layout => nil
    end

    def create
    end
end