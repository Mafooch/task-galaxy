class Assignment < ActiveRecord::Base
  belongs_to :project
  belongs_to :user

  validates :user_id,
    presence: true
  validates :project_id,
    presence: true
  validates :user,
    uniqueness: { scope: :project,
      message: "The task has already been assigned to this user,"}
end
