class Dog < ApplicationRecord 
    validates_presence_of :name, message: 'A dog has to have a name!' 
    validates :age, numericality: {only_integer: true}
    validates_presence_of :breed, message: 'You forgot to add a breed!'
    validates_presence_of :bio, message: 'You forgot to add a bio!'
end