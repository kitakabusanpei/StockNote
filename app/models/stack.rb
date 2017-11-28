class Stack < ActiveResource::Base
  # herokuだと１万件までしか使えないのでAPIを使用
  # レスポンスが遅いためローカルではActiveResourceをActiveRecordに戻す
  # ローカル時にはマイグレーションを作成する（db/fixtures/stacks.rbにある）
  self.site="https://ancient-cliffs-27531.herokuapp.com/"
  has_many :positions
  has_many :selections
  has_many :companies
end
