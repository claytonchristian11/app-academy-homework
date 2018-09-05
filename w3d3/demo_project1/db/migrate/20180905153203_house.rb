class House < ActiveRecord::Migration[5.2]
  def change

    create_table :house do |t|
      t.string :address
      t.integer :house_id
      t.timestamp

  end
end
