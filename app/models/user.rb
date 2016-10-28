class User < ActiveRecord::Base ## creamos una clase que va a estar en una base de datos
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    validates :email, uniqueness: true
    validates :nick, presence: true
    
    has_many :messages
end 