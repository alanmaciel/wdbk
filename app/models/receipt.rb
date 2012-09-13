class Receipt < ActiveRecord::Base
  attr_accessible :amount, :name, :tax
end
