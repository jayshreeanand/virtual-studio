class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.belongs_to :organization
      t.string :title
      t.text :description
      t.text :content
      t.timestamps
    end
  end
end
