class Admin < ActiveRecord::Base
  enum role: [:super_admin, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :admin
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :rememberable, :trackable, :validatable
end
