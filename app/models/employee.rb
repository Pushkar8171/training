class Employee < ApplicationRecord

    
  belongs_to :company, touch: true
  after_touch do
    puts 'An Employee was touched'
  end 
end
