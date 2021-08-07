class CreateTips < ActiveRecord::Migration[6.1]
  def change
    create_table :tips do |t|
      t.string :title
      t.text :description
      t.text :benefits
      t.text :instructions
      t.text :image_data
      t.timestamps
    end
  end
end
