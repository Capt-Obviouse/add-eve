class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  has_one :view_setting, :dependent => :destroy
  has_one :admin, :dependent => :destroy
  has_one :mentor, :dependent => :destroy
  has_many :program
  after_save :after_create

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
  def after_create
    newView = ViewSetting.new
    newView.user_id = self.id
    newView.save
    newView = Admin.new
    newView.user_id = self.id
    newView.save
  end
end
