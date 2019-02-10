class Admin::ContactsController < ApplicationController
    layout "admin"

    def index
        @contacts = Contact.all
    end
end
