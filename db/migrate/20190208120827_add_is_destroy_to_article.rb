class AddIsDestroyToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :is_destroy, :boolean, default: false, null: false
  end
end
