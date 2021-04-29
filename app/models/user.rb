class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :appointments, dependent: :delete_all

  validates :name, presence: true, length: { minimum: 3, maximum: 10 }, uniqueness: true
  validates :email, presence: true, format: { with: /\w+@\w+\.{1}[a-zA-Z]{2,}/ }, uniqueness: true,
                    length: { minimum: 10, maximum: 30 }
  validates :password, presence: true, length: { minimum: 6, maximum: 10 }
end
