###########herokuのDBが10000件までなので一旦使用不可################
# 更新用
# "-"がどこかに含まれているため、正規表現しておくこと
#
# データ更新はコンソールで実行（herokuの場合）↓
# heroku run ./bin/rake db:seed_fu

# CSV.foreach('db/fixtures/dayStack.csv', headers: true) do |row|
#   Stack.seed(:code) do |s|
#     s.code = row[0]
#     s.company = row[1]
#     s.market = row[2]
#     s.sector = row[3]
#     s.market_price = row[4]
#     s.issued_stocks = row[5]
#     s.stock_price = row[6]
#     s.dividend = row[7]
#     s.industry_per = row[8]
#     s.eps = row[9]
#     s.bps = row[10]
#   end
# end



# migrationも一旦ロールバックさせる
# class CreateStacks < ActiveRecord::Migration
#   def change
#     create_table :stacks do |t|
#       t.integer :code                        # コード
#       t.string :company                      # 銘柄
#       t.string :market                       # 市場
#       t.string :sector                       # セクター
#       t.integer :market_price, :limit => 8   # 時価総額 桁数
#       t.integer :issued_stocks, :limit => 8  # 発行株式数 桁数
#       t.integer :stock_price                 # 株価
#       t.float :dividend                      # 配当金
#       t.float :industry_per                  # 業種別PER
#       t.float :eps                           # EPS
#       t.float :bps                           # BPS
#
#       t.timestamps null: false
#     end
#   end
# end
