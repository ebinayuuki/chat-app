class Room < ApplicationRecord
  has_many :room_users, dependent: :destroy
  has_many :users, through: :room_users  
  has_many :messages, dependent: :destroy

  validates :name, presence: true #ユーザ登録時、nameキーにデータ未入力だとエラーを返す
end
