class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.integer :selection_order
      t.text :buy_selection
      t.integer :terget_price
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
