//
//  main.swift
//  BankAccount
//
//  Created by Dan Zhao on 2021-10-03.
//

import Foundation

func displayAccount(bankAccount: BankAccount) -> String{
    
    return bankAccount.description+"Interest is "+String(format:"%.4f\n",bankAccount.interest);
}

//create and initialize BankAccount objects
let account1 = BankAccount()

print("Creating the account 1\n" + displayAccount(bankAccount: account1)+"\n")

//After deposit some money from account 1
account1.credit(amount: 67.98)
print("After deposit 67.98 dollors \n"+displayAccount(bankAccount: account1)+"\n")

//After withdraw some money from account 1
account1.debit(amount: 32.10)
print("After withdraw 32.10 dollors \n"+displayAccount(bankAccount: account1)+"\n")

//After withdraw some money from account 1
print("Try to withdraw more than limit amount from account1")
account1.debit(amount: 40)
print("After withdraw more than limit amount from account1\n"+displayAccount(bankAccount: account1)+"\n")


//change the name of the account1
account1.customer_name = "Alex"
print("After change the customer name of the account 1\n" + displayAccount(bankAccount: account1))


//change the account number of the account1
account1.account_number = 123
print("After change the account number of the account 1\n" + displayAccount(bankAccount: account1))

//print the interest of the account1
print("the interest of the account1: "+String(format: "%.4f", account1.interest))

account1.yearly_rate = 0.06
print("After change the account1's yearly interest rate, the interest becomes "+String(format: "%.4f\n", account1.interest))


//initialize the account2
if let account2 = BankAccount(account_number: 0002, customer_name: "Mada", account_balance: 12, yearly_rate: 0.05){
    print("Create the account2")
    print(account2.description)
    
} else{
    print("account2: initializer failed due to invalid arguments")
}

//initialize the account3
if let account3 = BankAccount(account_number: 0003, customer_name: "Steve", account_balance: 9){
    print("Create the account3")
    print(account3.description)
    
} else{
    print("account3: initializer failed due to invalid arguments")
}




