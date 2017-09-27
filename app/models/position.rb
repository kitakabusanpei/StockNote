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
    stack_company.slice(4..14)
  end

 def pie_color(color_num)
   count = 0
   i = 0
   color = ['gray' ,'red', 'yellow','blue','lime','green','aqua','purple','navy','teal','fuchsia','maroon']
   while count < color_num
     if count == 12
       i = 0
     end
     print "#{color[i]},"
     i+=1
     color+=1
   end
 end
end
