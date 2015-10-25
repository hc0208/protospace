class CreateThumbnails < ActiveRecord::Migration
  def change
    create_table :thumbnails do |t|
      t.integer :prototype_id
      t.text :iamge_url
      t.integer :role

      t.timestamps
    end
  end
end
