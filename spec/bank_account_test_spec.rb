require 'bank_account'

RSpec.describe BankAccount, "#sets initial deposit 0" do
  it "set initial balance to 0" do
    myacc = BankAccount.new 
    myacc.balance
    expect(myacc.balance).to eq 0
  end
  
  it "makes a deposit" do
    myacc = BankAccount.new 
    myacc.deposit(100)
    expect(myacc.balance).to eq 100
  end  


end