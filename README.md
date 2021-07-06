**Bank statement**

>The program is coded in Ruby  
>Interact with the program via REPL, in this case IRB

An example to run the code in irb -
- deposit and withdraw are entered with amount in integers and date in format DDMMYYYY 
- require './lib/bank_account.rb'
- user1 = BankAccount.new
- user1.deposit(1000, 10012012)
- user1.deposit(2000, 13012012)
- user1.withdraw(500, 14012012)
- user1.statement

**Things that don't work(problems and blockers)**
- amount is displayed as 100.0 rather than 100.00
- a false date can be entered ie, 43509090
- i was blocked on testing for a large formatted multi line output 


**Acceptance criteria**
Given a client makes a deposit of 1000 on 10-01-2012  
And a deposit of 2000 on 13-01-2012  
And a withdrawal of 500 on 14-01-2012  
When they print their bank statement  
Then they would see:  

date || credit || debit || balance  
14/01/2012 || || 500.00 || 2500.00  
13/01/2012 || 2000.00 || || 3000.00   
10/01/2012 || 1000.00 || || 1000.00

User Stories
>The user needs to make deposits  
>The user needs to make withdrawals  
>The User needs to print a statement   
  format would be:    
  date, amount(credit or debit) & balance  
> Data can be kept in memory (no DB required)   


Domain model
----
**Nouns** 
- statement
- balance

**Verbs**
- print
- deposit
- withdraw

**Objects** | **Messages** | **Data**
-|-|-
statement   | print(statement, balance, date)| array of data(date, deposit, withdraw, balance)
deposit     | (add funds, balance, date)|amount & date
withdraw    | (minus funds, balance, date)|amount & date

**Methods** | **Scenario** | **input** | **output**  
-|-|-|-
statement#print |print the statement |statement info |date, deposit,withdrawal, balance 
deposit#amount, date    | add funds to the account|deposit(amount, date)|balance updated
withdraw #amount, date   | minus funds form the account| withdraw(amount, date)|balance updated