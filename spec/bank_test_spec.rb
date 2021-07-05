require 'bank_test'

RSpec.describe BankAccount, "#sets initial deposit 0" do
  it "set initial balance to 0" do
    myacc = BankAccount.new 
    myacc.balance
    expect(myacc.balance).to eq 0
  end
end