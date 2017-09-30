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
      # csv_column_positions はカラム名を配列で返す
      csv << csv_column_positions
      all.each do |position|
        # attributes はカラム名と値のハッシュを返す
        # valudes_at はハッシュから引数で指定したキーに対応する値を取り出し、配列にして返す
        # column_namesで指定したvalue値の配列を返す
        # csv << customer.attributes.values_at(*column_names)
        # 指定したいので変更
        csv << position.csv_column_value_positions
      end
    end
  end

  def self.csv_column_positions
    ["企業", "株数", "買値", "買い理由", "売り価格", "売り理由"]
  end

  def csv_column_value_positions
    [name, lot, buy_price, buy_reason, sell_price, sell_reason]
  end

end
