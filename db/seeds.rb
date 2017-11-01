# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

=begin
n = 1
while n <= 20
  if n == 1
  # 個人しか見れないので指定
  User.create!(email: "a@a",
               password: "aaaaaa",
               password_confirmation: "aaaaaa",
               name: "aa",
               uid: "f10d0a2f-1a86-4cf3-9874-962482933d3d",
               )
  end
  Position.create(
                  name: "1301 極洋",
                  lot: n,
                  buy_price: n,
                  buy_reason: Faker::Beer.name,
                  sell_price: n,
                  sell_percent: n,
                  sell_reason: Faker::Coffee.blend_name,
                  user_id: 1
                  )
  Selection.create(
                   selection_order: n,
                   name: "1301 極洋",
                   buy_selection: n,
                   terget_price: n,
                   user_id: 1
                   )
  n = n + 1
end
=end

require "csv"

CSV.foreach('db/company.csv', headers: true) do |row|
  Company.create(:code => row[0],
                 :company => row[1],
                 :yutai_simple => row[2],
                 :yutai => row[3],
                 :month_before => row[4],
                 :month_rear => row[5],
                 :long_term => row[6],
                 :money => row[7],
                 :share_unit => row[8])
end
