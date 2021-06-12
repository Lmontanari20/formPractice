class Owner < ApplicationRecord
    validates_presence_of :name, message: "An owner must have a name!"
end