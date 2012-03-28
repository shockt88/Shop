class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer
      t.string :card_number

      t.timestamps
    end
  end
end
