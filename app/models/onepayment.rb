class Onepayment < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :month
  belongs_to :day
  belongs_to :store
  belongs_to :kisyu


  with_options presence: true do
    validates :month_id,:day_id,:store_id,:kisyu_id, numericality: { other_than: 1 }
    validates :one_investment
    validates :one_recovery
    validates :one_balance_of_payment
    validates :one_rationale
  end


end
