class CreateProducers < ActiveRecord::Migration[6.0]
  def change
    create_table :producers do |t|
      t.string :name
      t.string :location
      t.string :description
      t.string :photo_url

      t.timestamps
    end
  end
end
