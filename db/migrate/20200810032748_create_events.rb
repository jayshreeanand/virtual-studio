class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.belongs_to :organization
      t.string :title
      t.text :description
      t.datetime :starts_at
      t.integer :duration

      t.timestamps
    end
  end
end
