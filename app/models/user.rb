class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  def to_s
  	users
  end
  def to_param
  		name.parameterize
  end

  def name=(value)
  		super(value.to_s.strip)
  end

  def email
  		super || "#{name}@gail.com"
  end

  def admin=(value)
  	super(value || false)
  end

end
