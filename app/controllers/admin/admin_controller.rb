class Admin::AdminController < ApplicationController
    layout "admin"

    def index
        @articles = Article.all
    end

end