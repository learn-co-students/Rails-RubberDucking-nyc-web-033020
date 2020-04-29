class Duck < ApplicationRecord
    belongs_to :student 

    validates :name, :student_id, :description, presence: true 
    
end
