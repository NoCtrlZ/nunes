class Admin::ErrorsController < ApplicationController
    before_action :extract_error, only: [:show, :edit, :update, :destroy, :change_display]
    layout "admin"

    def index
        @errors = Error.all
    end

    def new
        @error = Error.new
    end

    def show
        @error = Error.find params[:id]
    end

    def edit
        @error = Error.find params[:id]
    end

    def update
        @error = Error.find params[:id]
        @error.update_attributes error_params
        redirect_to admin_root_path
    end

    def create
        @error = Error.new(error_params)
        @error.save
        redirect_to admin_root_path
    end

    def change_display
        @error = Error.find params[:id]
        @error.is_display = !@error.is_display
        @error.save
        redirect_to admin_root_path
    end

    def pre_destroy
        @error = Error.find params[:id]
        @error.is_destroy = true
        @error.is_display = false
        @error.save
        redirect_to admin_root_path
    end

private
    def error_params
      params.require(:error).permit(
        :title,
        :intro,
        :text,
        :point,
        :is_display)
    end

    def extract_error
        @error = Error.find(params[:id])
    end
end
