class BankAccount

  def initialize
    @balance = 0
    @account_arr = []
  end

  def balance 
    @balance 
  end

  def statement_info
    @account_arr.sort.reverse
  end


  def deposit(amount, deposit_date)
    new_deposit_date = deposit_date.to_s
    @account_arr << "#{new_deposit_date.insert(2,'/').insert(5,'/')} || #{amount} ||      ||#{@balance += amount}"
  end

  def withdraw(amount, withdrawal_date)
    new_withdraw_date = withdrawal_date.to_s
    @account_arr << "#{new_withdraw_date.insert(2,'/').insert(5,'/')} ||     ||  #{amount} ||#{@balance -= amount}"
  end

  def statement
    puts statementHeader
    puts statement_info
  end
  
  def statementHeader
    "date || credit || debit || balance"
  end

end