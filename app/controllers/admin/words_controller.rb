class Admin::WordsController < ApplicationController
    before_action :extract_word, only: [:show, :edit, :update, :destroy, :change_display]
    layout "admin"

    def index
        @words = Word.all
    end

    def new
        @word = Word.new
    end

    def show
        @word = Word.find params[:id]
    end

    def edit
        @word = Word.find params[:id]
    end

    def update
        @word = Word.find params[:id]
        @word.update_attributes word_params
        redirect_to admin_words_path
    end

    def create
        @word = Word.new(word_params)
        @word.save
        redirect_to admin_words_path
    end

    def change_display
        @word = Word.find params[:id]
        @word.is_display = !@word.is_display
        @word.save
        redirect_to admin_words_path
    end

    def pre_destroy
        @word = Word.find params[:id]
        @word.is_destroy = true
        @word.is_display = false
        @word.save
        redirect_to admin_words_path
    end

private
    def word_params
      params.require(:word).permit(
        :title,
        :intro,
        :text,
        :point,
        :is_display)
    end

    def extract_word
        @word = Word.find(params[:id])
    end
end
