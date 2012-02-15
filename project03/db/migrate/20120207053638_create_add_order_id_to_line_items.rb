class CreateAddOrderIdToLineItems < ActiveRecord::Migration
  def change
    create_table :add_order_id_to_line_items do |t|
      t.integer :order_id

      t.timestamps
    end
  end
end
