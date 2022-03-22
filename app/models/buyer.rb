class Buyer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         VALID_PASSWORD_REGEX =/\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[\d])\w{6,12}\z/
         validates :password, presence: true,
         format: { with: VALID_PASSWORD_REGEX,
         message: "は半角6~12文字英大文字・小文字・数字それぞれ1文字以上含む必要があります"}

         validates :name, presence: true
         validates :postal_code, presence: true
         validates :prefecture_code, presence: true
         validates :city, presence: true
         validates :street, presence: true
         validates :phone, presence: true
end
