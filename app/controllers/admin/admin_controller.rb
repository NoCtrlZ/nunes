class Admin::AdminController < ApplicationController
	http_basic_authenticate_with name: ENV['ADMIN_USER'], password: ENV['ADMIN_PASSWORD']
    layout "admin"

    def index
        @articles = Article.all
    end

end