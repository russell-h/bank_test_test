class BankAccount

  attr_reader :balance

  def initialize
    @balance = 0
    @account_arr = []
  end

  # method below can be deleted and replaced with the attribute reader :-  attr_reader :balance
  # def balance 
  #   @balance 
  # end

  def statement_info
    @account_arr.sort.reverse
  end


  def deposit(amount, deposit_date)
    amount = amount.to_f.round(2)
    deposit_date = deposit_date.to_s
    @account_arr << "#{deposit_date.insert(2,'/').insert(5,'/')} || #{amount} ||      ||#{@balance += amount}"
  end

  def withdraw(amount, withdrawal_date)
    amount = amount.to_f.round(2)
    withdraw_date = withdrawal_date.to_s
    @account_arr << "#{withdraw_date.insert(2,'/').insert(5,'/')} ||     ||  #{amount} ||#{@balance -= amount}"
  end

  def statement
    puts statementHeader
    puts statement_info
  end
  
  def statementHeader
    "date || credit || debit || balance"
  end

end