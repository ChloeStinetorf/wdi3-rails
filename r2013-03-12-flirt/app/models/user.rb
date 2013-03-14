class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :username, :email, :password, :password_confirmation, :userable_id, :userable_type
  belongs_to :userable, :polymorphic => true
end
