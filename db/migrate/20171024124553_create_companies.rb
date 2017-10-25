class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :code                       # コード
      t.string :company                     # 銘柄
      t.integer :set_per, default: 15       # 設定PER
      t.string :yutai_simple                # 優待内容（簡）
      t.string :yutai                       # 優待内容
      t.string :month_before                # 前月
      t.string :month_rear                  # 後月
      t.boolean :long_term, default: false  # 長期間優待
      t.integer :money                      # 優待金額
      t.integer :share_unit                 # 単元数
      t.string :site                        # url

      t.timestamps null: false
    end
  end
end
