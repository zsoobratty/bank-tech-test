# Bank tech test

### Requirements 
* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria
**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

### Input/Output
Input:
Credit 1000
Output:
date || credit || debit || balance
10/01/2012 || 1000.00 || || 1000.00

Input:
Credit 2000
Output:
date || credit || debit || balance
13/01/2012 || 2000.00 || || 3000.00

Input:
Debit 500
Output:
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00


# How to use

1. Run bundle install
2. Run the following: irb -r ./lib/account.rb -r ./lib/statement.rb
3. Initialize a new account (e.g. account = Account.new)
4. To print a statement, pass account into Statement (e.g. statement = Statement.new(account)) and run statement.print_statement
5. Enjoy!

# How it looks
```
2.6.3 :002 > account = Account.new
 => #<Account:0x00007fbdac13eb58 @balance=0, @transaction_history=[]> 
2.6.3 :003 > statement = Statement.new(account)
 => #<Statement:0x00007fbdac1453e0 @account=#<Account:0x00007fbdac13eb58 @balance=0, @transaction_history=[]>> 
2.6.3 :004 > account.credit 5000
 => ["2020-03-25 || 5000.0 ||  || 5000.0"] 
2.6.3 :005 > account.debit 2500
 => ["2020-03-25 || 5000.0 ||  || 5000.0", "2020-03-25 ||  || 2500.0 || 2500.0"] 
2.6.3 :006 > print statement.print_statement
date || credit || debit || balance
2020-03-25 || 5000.0 ||  || 5000.0
2020-03-25 ||  || 2500.0 || 2500.0
```