class Company < ActiveRecord::Base
  paginates_per 200

  belongs_to :stack
end
