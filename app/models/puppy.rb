class Puppy < ActiveRecord::Base
  validates :name, :age, :breed, presence: true
  validates :age, numericality: {only_integer: true}
  validates :name, length: {minimum: 3}
end
