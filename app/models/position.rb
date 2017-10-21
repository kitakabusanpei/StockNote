class Position < ActiveRecord::Base
  validates :lot, :buy_price, :buy_reason, :sell_price, :sell_percent ,:sell_reason, presence: true

  belongs_to :user
  belongs_to :stack

  #証券コードを表示
  def position_code(stack_code)
    stack_code.slice(0,4)
  end

  # 会社名を表示
  def position_company(stack_company)
    stack_company.slice(5..15)
  end

  def self.to_csv
    CSV.generate do |csv|
      csv << csv_column_positions
      all.each do |position|
        csv << position.csv_column_value_positions
      end
    end
  end

  def self.csv_column_positions
    ["企業", "株数", "買値", "買い理由", "売却価格希望", "売却理由"]
  end

  def csv_column_value_positions
    [name, lot, buy_price, buy_reason, sell_price, sell_reason]
  end

  # 未使用
  def price_calcultion(stock_price, buy_price, lot)
    (stock_price - buy_price) * lot
  end

end
