class Admin::CommandsController < ApplicationController
    before_action :extract_command, only: [:show, :edit, :update, :destroy, :change_display]
    layout "admin"

    def index
        @commands = Command.all
    end

    def new
        @command = Command.new
    end

    def show
        @commnad = Command.find params[:id]
    end

    def edit
        @command = Command.find params[:id]
    end

    def update
        @command = Command.find params[:id]
        @command.update_attributes command_params
        redirect_to admin_root_path
    end

    def create
        @command = Command.new(command_params)
        @command.save
        redirect_to admin_root_path
    end

    def change_display
        @command = Command.find params[:id]
        @command.is_display = !@command.is_display
        @command.save
        redirect_to admin_root_path
    end

    def pre_destroy
        @command = Command.find params[:id]
        @command.is_destroy = true
        @command.is_display = false
        @command.save
        redirect_to admin_root_path
    end

private
    def command_params
      params.require(:command).permit(
        :title,
        :intro,
        :text,
        :point,
        :is_display)
    end

    def extract_command
        @command = Command.find(params[:id])
    end
end