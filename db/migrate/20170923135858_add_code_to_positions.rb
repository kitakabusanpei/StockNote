class AddCodeToPositions < ActiveRecord::Migration
  def change
    add_column :positions, :code, :integer
  end
end
