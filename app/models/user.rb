class User < ApplicationRecord
	include PublicActivity::Model
	tracked owner: Proc.new{ |controller, model| controller.current_user if controller }

  devise :database_authenticatable, :recoverable, 
  :rememberable, :trackable, :validatable, :lockable, :timeoutable,
  authentication_keys: [:login]

  validates :email, uniqueness: true
  validates :username, uniqueness: true

  attr_accessor :login

  def self.find_for_database_authentication warden_condition
  	conditions = warden_condition.dup
  	login = conditions.delete(:login)
  	where(conditions).where(
  		["lower(username) = :value OR lower(email) = :value",
  			{ value: login.strip.downcase}]).first
  end

  def active_for_authentication?
  	super && active?
  end
end
