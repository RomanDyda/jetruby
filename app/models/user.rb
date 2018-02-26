class User < ApplicationRecord
  has_and_belongs_to_many :orders
  ROLES = ['superadmin', 'guest', 'lunchesadmin']

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def superadmin?
    role == 'superadmin'
  end

  def sguest?
    role == 'guest'
  end

  def lunchesadmin?
    role == 'lunchesadmin'
  end

  after_create :check_role

  private

  def check_role
    unless User.where(role: 'lunchesadmin').any?
      self.update(role: 'lunchesadmin')    
    end
  end
end