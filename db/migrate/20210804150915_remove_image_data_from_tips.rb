class RemoveImageDataFromTips < ActiveRecord::Migration[6.1]
  def change
    remove_column :tips, :image_data, :text
  end
end
