class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessor :avatar
  mount_uploader :avatar, AvatarUploader
  has_many :blogs
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
