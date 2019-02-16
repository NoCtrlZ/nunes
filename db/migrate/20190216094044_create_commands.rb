class CreateCommands < ActiveRecord::Migration
  def change
    create_table :commands do |t|
      t.string :title
      t.string :point
      t.text :text
      t.string :intro
      t.boolean :is_destroy, default: false, null: false
      t.boolean :is_display, default: false, null: false

      t.timestamps null: false
    end
  end
end
