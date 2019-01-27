class AddIsDisplayToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :is_display, :boolean, default: false, null: false
  end
end
