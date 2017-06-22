class Content < ApplicationRecord
  has_one :abstract
  has_one :body
  has_many :comments
  has_many :links
end
