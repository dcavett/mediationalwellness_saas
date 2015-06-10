class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :plan
  has_one :profile
  validates :terms, acceptance: true
  #validates_acceptance_of :tos_agreement, :allow_nil => false, :accept => true, :on => :create
  #attr_accessor :stripe_card_token
  
  #The code below should be activated if/when payment is wanted, will also need to do AddStripeCustomerTokenToUser table in db
  #Look at Part VI (6), video Stripe Server-side code in manual to execute these operations
  
  #def save_with_payment
  # if valid?
  #    customer = Stripe::Customer.create(description: email, plan: plan_id, card: stripe_card_token)
  #    self.stripe_customer_token = customer.id
  #    save!
  #  end
  #end
  
end
