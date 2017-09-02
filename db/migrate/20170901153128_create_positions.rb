class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :name             # ポジション名
      t.integer :lot             # 株数
      t.integer :buy_price       # 買い価格
      t.text :buy_reason         # 買い理由
      t.string :buy_image        # 買い理由画像
      t.integer :sell_price      # 売り価格
      t.integer :sell_percent    # 売り＋％
      t.integer :high_price_per  # 最高値からの下げ％
      t.text :sell_reason        # 売り理由

      t.timestamps null: false
    end
  end
end
