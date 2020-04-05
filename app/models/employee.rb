class Employee < ApplicationRecord
  belongs_to :store_list
 def completed?
    !completed_at.blank?
   end
 end
