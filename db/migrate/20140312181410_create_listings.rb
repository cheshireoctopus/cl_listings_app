class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.string :url
      t.references :city, index: true

      t.timestamps
    end
  end
end
