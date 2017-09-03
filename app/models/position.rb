class Position < ActiveRecord::Base
  validates :buy_reason, :sell_reason, presence: true
  validates :buy_reason, :sell_reason, length: { in: 1..240 }

end
