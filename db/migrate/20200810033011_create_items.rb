class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.belongs_to :organization
      t.string :name
      t.text :description
      t.text :content

      t.timestamps
    end
  end
end
