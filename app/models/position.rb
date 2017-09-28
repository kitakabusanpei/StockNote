class Position < ActiveRecord::Base
  validates :buy_reason, :sell_reason, presence: true
  # validates :buy_reason, :sell_reason, length: { in: 1..240 }

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

end
