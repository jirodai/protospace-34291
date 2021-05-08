class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :profile, presense: true
  validates :occupation, presense: true
  validates :position, presense: true
  validates :name, presence: true
  has_many :prototypes
  has_many :comments
  
end
