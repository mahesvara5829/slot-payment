class Onepayment < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :month
  belongs_to :day
  belongs_to :store
  belongs_to :kisyu


  belongs_to :user


  with_options presence: true do
    validates :month_id,:day_id,:store_id,:kisyu_id, numericality: { other_than: 1 }
    validates :one_investment, format: { with: /\A[0-9]+\z/ , message: "with a half size number"}
    validates :one_recovery, format: { with: /\A[0-9]+\z/ , message: "with a half size number"}
    validates :one_balance_of_payment, format: { with: /\A[0-9]+\z/ , message: "with a half size number"}
    validates :one_rationale
  end


end
