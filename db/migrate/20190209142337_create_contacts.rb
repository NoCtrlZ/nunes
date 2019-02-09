class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :nickname
      t.string :address
      t.text :text

      t.timestamps null: false
    end
  end
end
