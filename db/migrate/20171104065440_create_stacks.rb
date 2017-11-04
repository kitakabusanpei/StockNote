class CreateStacks < ActiveRecord::Migration
  def change
    create_table :stacks do |t|
      t.integer :code                        # コード
      t.string :company                      # 銘柄
      t.string :market                       # 市場
      t.string :sector                       # セクター
      t.integer :market_price, :limit => 8   # 時価総額 桁数
      t.integer :issued_stocks, :limit => 8  # 発行株式数 桁数
      t.integer :stock_price                 # 株価
      t.float :dividend                      # 配当金
      t.float :industry_per                  # 業種別PER
      t.float :eps                           # EPS
      t.float :bps                           # BPS

      t.timestamps null: false
    end
  end
end
