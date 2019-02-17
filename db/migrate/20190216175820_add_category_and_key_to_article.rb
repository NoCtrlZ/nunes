class AddCategoryAndKeyToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :key, :string
    add_column :articles, :category, :string
  end
end
