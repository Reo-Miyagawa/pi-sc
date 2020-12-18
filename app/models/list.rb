class List < ApplicationRecord

  with_options presence: true do
    validates :title
  end

  belongs_to :user
  has_many :cards
end
