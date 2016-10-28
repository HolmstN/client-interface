class Client < ActiveRecord::Base
  has_many :connections
  has_many :accounts
end