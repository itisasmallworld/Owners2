class Project < ApplicationRecord

  belongs_to :user
  has_one :entry
  has_one :purchase

end
