class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :appointments
  has_many :services, through: :appointments

  validates :name, presence: true, length: { minimum: 3, maximum: 10 }, uniqueness: true
end
