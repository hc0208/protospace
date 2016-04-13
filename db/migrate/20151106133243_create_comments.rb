class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user
      t.references :prototype
      t.text :text

      t.timestamps null: false
    end
  end
end
