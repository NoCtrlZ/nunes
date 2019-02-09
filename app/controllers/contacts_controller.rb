class ContactsController < ApplicationController
    before_action only: [:create]
end