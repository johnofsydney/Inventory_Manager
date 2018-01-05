class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.text :part_number
      t.text :image
      t.decimal :list_price
      t.timestamps
    end
  end
end
