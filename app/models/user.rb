class User < ActiveRecord::Base
  include Tire::Model::Search
  include Tire::Model::Callbacks
  has_many :restaurants
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
User.import