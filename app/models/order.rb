class Order < ApplicationRecord
  belongs_to :customer, optional: true
  validates_presence_of :customer
  validates :customer_id, presence: true
  validates :product_name, presence: true
  validates :product_count, presence: true
  validates :product_count, numericality: {only_integer: true}
end
