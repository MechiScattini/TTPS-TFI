class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role: [:client, :bank_personal, :admin]
  after_initialize :set_default_role, :if => :new_record?
  has_many :appointments

  def set_default_role
    self.role ||= :client
  end

end
