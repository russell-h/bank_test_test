require 'bank_account'

RSpec.describe BankAccount, "#sets initial deposit 0" do
  it "set initial balance to 0" do
    myacc = BankAccount.new 
    myacc.balance
    expect(myacc.balance).to eq 0
  end
  
  it "makes a deposit" do
    myacc = BankAccount.new 
    myacc.deposit(100, 10102010)
    expect(myacc.balance).to eq 100
  end  


  it "makes a withdrawal" do
    myacc = BankAccount.new 
    myacc.withdraw(100, 11102010)
    expect(myacc.balance).to eq -100
  end  

  it "prints a statement header" do
    myacc = BankAccount.new 
    myacc.statementHeader
    expect(myacc.statementHeader).to eq "date || credit || debit || balance"
  end  

  it "prints an info statement" do
    myacc = BankAccount.new 
    myacc.deposit(1000, 10102010)
    myacc.statement_info
    expect(myacc.statement).to eq "10102010 || 1000 ||  || 1000"
  end  

  
  


end