class Student < ActiveRecord::Base
  attr_accessible :name, :house_id, :spell_ids
  belongs_to :house
  has_and_belongs_to_many :spells
end