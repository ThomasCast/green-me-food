class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :photo_url
      t.string :group

      t.timestamps
    end
  end
end
