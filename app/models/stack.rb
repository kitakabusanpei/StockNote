class Stack < ActiveRecord::Base
  has_many :positions
  has_many :selections
  has_many :companies
end
