class CreateThumbnails < ActiveRecord::Migration
  def change
    create_table :thumbnails do |t|
      t.references :prototype
      t.text :iamge_url
      t.integer :role

      t.timestamps
    end
  end
end
