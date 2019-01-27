class AddDisplayToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :display, :boolean, default: false, null: false
  end
end
