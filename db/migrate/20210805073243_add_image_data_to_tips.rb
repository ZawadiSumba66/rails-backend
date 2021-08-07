class AddImageDataToTips < ActiveRecord::Migration[6.1]
  def change
    add_column :tips, :image_data, :text
  end
end
