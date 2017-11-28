class Company < ActiveRecord::Base
  belongs_to :stack

  # 検索機能（証券コードのみ）
    def self.search(search)
      if search
        Company.where(['code LIKE ?', "%#{search}"])
      else
        Company.all
      end
    end
end
