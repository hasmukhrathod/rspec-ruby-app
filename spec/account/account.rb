class Account
  attr_accessor :balance
  def initialize(balance: 0)
    @balance = balance
  end
  
  def current_balance
    @balance
  end
  
end