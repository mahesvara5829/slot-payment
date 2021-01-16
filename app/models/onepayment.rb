class Onepayment < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :month
  belongs_to :day
  belongs_to :store
  belongs_to :kisyu


end
