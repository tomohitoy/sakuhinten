class Kumo < ActiveRecord::Base
  has_one :ato, :dependent => :destroy
  has_one :mae, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  accepts_nested_attributes_for :ato
  accepts_nested_attributes_for :mae
end
