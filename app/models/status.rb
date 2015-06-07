class Status < ActiveRecord::Base

  belongs_to :user

  belongs_to :project

  #The line below makes it so a description is required,
  #not sure how you want yours to be so I just wanted to point it out for you.
  #validates :description, presence: true


end
