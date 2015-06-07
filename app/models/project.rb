class Project < ActiveRecord::Base

  belongs_to :user

  has_many :statuses

  accepts_nested_attributes_for :statuses

  validates :title, presence: true

validates_associated :statuses

end
