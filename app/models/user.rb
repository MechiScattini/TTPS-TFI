class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role: [:client, :bank_personal, :admin]
  after_initialize :set_default_role, :if => :new_record?
  has_and_belongs_to_many :appointments
  validates :branch_id, presence: true, if: :is_personal?

  def set_default_role
    self.role ||= :client
  end

  private
  def is_personal?
    self.role == "bank_personal"
  end

end
