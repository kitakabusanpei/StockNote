class Stack < ActiveResource::Base
  self.site="https://ancient-cliffs-27531.herokuapp.com/"
  has_many :positions
  has_many :selections
  has_many :companies
end
