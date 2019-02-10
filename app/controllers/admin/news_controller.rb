class Admin::NewsController < ApplicationController
    layout "admin"

    def index
        @news = News.all
    end

    def new
        @news = News.new
    end
end
