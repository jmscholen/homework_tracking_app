class User < ActiveRecord::Base
  has_and_belongs_to_many :enrollments
	has_many :comments
	has_many :homework_submissions
  # Include default devise modules. Others available are:
  # , :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

end
