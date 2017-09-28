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

end
