class BankAccount

  def initialize
    @balance = 0
  end

  def balance 
    @balance 
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def statement
    statementHeader
    @balance

  end
  
  def statementHeader
    "date || credit || debit || balance"
  end

end