class AddNameToSelections < ActiveRecord::Migration
  def change
    add_column :selections, :name, :string
  end
end
