class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar
  belongs_to :team

  validates :name, presence: true
  validates :avatar, presence: true
  validates :email, presence: true, uniqueness: true
end
