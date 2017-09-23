class Selection < ActiveRecord::Base
  belongs_to :user
  belongs_to :stack

  def selection_code(stack_code)
    stack_code.slice(0,4)
  end

  # 会社名を表示
  def selection_company(stack_company)
    stack_company.slice(5..-1)
  end

end
