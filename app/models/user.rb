class User < ActiveRecord::Base
  has_and_belongs_to_many :enrollments
	has_many :comments
	has_many :homework_submissions
  # Include default devise modules. Others available are:
  # , :lockable, :timeoutable and :omniauthable :confirmable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum role: {user: 0, admin: 1}
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  def administrator?
    current_user != admin
  end
  
end
