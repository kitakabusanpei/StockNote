class AddCodeToSelections < ActiveRecord::Migration
  def change
    add_column :selections, :code, :integer
  end
end
