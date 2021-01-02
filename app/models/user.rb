class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true #ユーザ登録時、nameキーにデータ未入力だとエラーを返す
  has_many :room_users
  has_many :rooms, through: :room_users
end
