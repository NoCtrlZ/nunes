class AddPointToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :point, :string
  end
end
