class AddWorkToProducers < ActiveRecord::Migration[6.0]
  def change
    add_column :producers, :work, :string
  end
end
