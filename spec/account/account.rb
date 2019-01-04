class Account
  attr_accessor :balance
  
  def initialize(balance: 0)
    @balance = balance
  end
  
  def current_balance
    @balance
  end
  
  def transaction(type:, amount:)
    if type == 'deposite'
      @balance+= amount
    else
      if @balance < amount
        puts nil
      else
        @balance-= amount
      end
    end
  end
  
end