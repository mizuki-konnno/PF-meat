class Item < ApplicationRecord
  belongs_to :genre
  has_many :order_details, dependent: :destroy

  attachment :image

  enum is_active: {"販売中": true, "販売停止": false }

end
