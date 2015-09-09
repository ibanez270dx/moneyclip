class User < ActiveRecord::Base
  has_many :accounts

  has_secure_password

  def name
    "#{first_name} #{last_name}"
  end

end
