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
    stack_company.slice(5..-1)
  end

  # 株価を表示
  def stack_price(stack_price)
    Stack.code.each do |stack|
      if position_code(stack_price) = stack
        Stack.stack_price
      end
    end
  end
  
end
