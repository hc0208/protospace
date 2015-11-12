class AddColumsToPrototypes < ActiveRecord::Migration
  def change
    add_column :prototypes, :tag_list, :string
  end
end
