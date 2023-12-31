class User < ApplicationRecord
  has_one :profile
  after_create :create_profile
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        
  private

  def create_profile
    Profile.create(user: self)
  end
end
