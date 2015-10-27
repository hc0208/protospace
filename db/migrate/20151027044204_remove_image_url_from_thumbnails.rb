class RemoveImageUrlFromThumbnails < ActiveRecord::Migration
  def change
    remove_column :thumbnails, :iamge_url, :text
  end
end
