# 更新用
# "-"がどこかに含まれているため、正規表現しておくこと
# コンソールで実行
# ./bin/rake db:seed_fu

CSV.foreach('db/fixtures/dayStack.csv', headers: true) do |row|
  Stack.seed(:code) do |s|
    s.code = row[0]
    s.company = row[1]
    s.market = row[2]
    s.sector = row[3]
    s.market_price = row[4]
    s.issued_stocks = row[5]
    s.stock_price = row[6]
    s.dividend = row[7]
    s.industry_per = row[8]
    s.eps = row[9]
    s.bps = row[10]
  end
end
