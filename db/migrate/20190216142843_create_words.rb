class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :word
      t.text :meaning
      t.boolean :is_destroy, default: false, null: false
      t.boolean :is_display, default: false, null: false


      t.timestamps null: false
    end
  end
end
