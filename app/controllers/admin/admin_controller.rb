class Admin::AdminController < ApplicationController
    layout "admin"

    def index
        @articles = Article.all
        @contacts = Contact.all
    end

end