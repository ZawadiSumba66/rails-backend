class RemoveImageFromTip < ActiveRecord::Migration[6.1]
  def change
    remove_column :tips, :image, :text
  end
end
