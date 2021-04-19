class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :admins
  # has_many :olympics
  has_many :responsable
  belongs_to :hierarchy

  validates :name, presence: true, format: { with: /^([a-zA-z]+\s[a-zA-z]+)$/, message: "name and surname", multiline: true }
  validates :email, presence: true, format: { with: /^\S+@\S+\.+\w.?\w?$/, message: "valid email", multiline: true}, uniqueness: true
  validates :cpf, presence: true, length: { is: 11 }, numericality: { only_integer: true }, uniqueness: true

end
