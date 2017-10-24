class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :code
      t.string :company
      t.integer :set_per, default: 15
      t.string :yutai_simple
      t.string :yutai
      t.string :month_before
      t.string :month_rear
      t.boolean :long_term, default: false
      t.integer :money
      t.integer :share_unit
      t.string :site

      t.timestamps null: false
    end
  end
end
