class Selection < ActiveRecord::Base
  validates :selection_order, :buy_selection, :terget_price, presence: true

  belongs_to :user
  belongs_to :stack

  #証券コードを表示
  def selection_code(stack_code)
    stack_code.slice(0,4)
  end

  # 会社名を表示
  def selection_company(stack_company)
    stack_company.slice(4..14)
  end

  def self.to_csv
    CSV.generate do |csv|
      csv << csv_column_selections
      all.each do |selection|
        csv << selection.csv_column_value_selections
      end
    end
  end

  def self.csv_column_selections
    ["順位", "企業", "希望株価", "買い理由"]
  end

  def csv_column_value_selections
    [selection_order, name, terget_price, buy_selection]
  end

end
