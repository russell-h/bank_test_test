bank statement

>The program is coded in Ruby
>Interact with the program via REPL, in this case IRB

Acceptance criteria
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
statement
balance

**Verbs**
print
deposit
withdraw

**Objects** | **Messages**
statement   | print(statement, balance, date)
deposit     | (add funds, balance, date)
withdraw    | (minus funds, balance, date)