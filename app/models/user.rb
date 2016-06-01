class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  has_one :view_setting, :dependent => :destroy
  has_one :admin, :dependent => :destroy
  has_one :mentor, :dependent => :destroy
  has_one :username, :dependent => :destroy
  has_many :program
  has_many :api
  has_many :character
  after_save :after_create

  def to_s
  	self.username.username
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
    #newView = ViewSetting.new
    #newView.user_id = self.id
    #newView.save
    #newView = Admin.new
    #newView.user_id = self.id
    #newView.save
    ViewSetting.create(:user_id => self.id)
    Admin.create(:user_id => self.id)
    Username.create(:username => self.email, :user_id => self.id)
  end
end
