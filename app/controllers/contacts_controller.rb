class ContactsController < ApplicationController
    before_action only: [:create]

    def create
        @contact = Contact.new(article_params)
        @contact.save
        redirect_to root_path
    end

    private
    def article_params
      params.require(:contact).permit(
        :nickname,
        :address,
        :text)
    end

end
