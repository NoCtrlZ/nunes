class Admin::AdminController < ApplicationController
    def index
        @articles = Article.all
        render :layout => nil
    end
end