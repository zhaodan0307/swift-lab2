//
//  BankAccount.swift
//  BankAccount
//
//  Created by Dan Zhao on 2021-10-03.
//

import CoreGraphics

public class BankAccount{
    //store properies
    //account number cannot be negative
    public var account_number:Int = 1{
        didSet {
            if account_number < 0 {
                print("account number is invalid, resetting to \(oldValue)")
                account_number = oldValue
            }
        }
        
    };
    //The customer's name must Capitalized
    public var customer_name:String = "Ann"{
        didSet {
            if customer_name.capitalized != customer_name  {
                print("customer's name is invalid, resetting to \(oldValue)")
                customer_name = oldValue
            }
        }
        
        
    }
    
    //The yearly interest rate between 01 and 0.02
    public var yearly_rate:Double = 0.02{
        didSet{
            if yearly_rate>0.1||yearly_rate<0.02{
                print("yearly interest rate is invalid, resetting to \(oldValue)")
                yearly_rate = oldValue
            }
        }
        
    }
    
    // balance is public, but it's setter is private and can be used only in class Account
    // private(set) - makes it read only
    //setter is private, so people cannot modify it
    //account balance must over 10
    public private(set)  var account_balance: Double = 10.00 {
        didSet{
            if account_balance<10.00{
                print("Account balance is invalid, resetting to \(oldValue)")
                account_balance = oldValue
            }
            
        }
        
    }
    
    
    
    // parameterless initializer to default vallue
    public init() { }
    
    // designated to the appropriate values
    
    public init?(account_number: Int,customer_name: String,account_balance: Double,yearly_rate: Double){
        
            self.account_number = account_number;
      
            self.customer_name = customer_name;
        
            self.account_balance = account_balance
        
            self.yearly_rate = yearly_rate
            
        if account_number < 0 || customer_name.capitalized != customer_name || account_balance < 10.00 || yearly_rate > 0.1 || yearly_rate < 0.02{
            
            return nil
        }
        
    }
    
    //deinit
    deinit{
        print("deinit account with the following account: \n"+self.description);
    }
    
    
    
    //computed property: description
    public var description: String {
        
        return customer_name + "'s balance: " + String(format:"%.2f\n", account_balance)
        + "account number is " + String(format: "%08d\n", account_number)
        + "yearly interest rate is " + String(format:"%.2f\n", yearly_rate)
    }
    
   //credit function the deposit amount must be positive
    public func credit(amount: Double){
        
        if amount > 0.0 {
            account_balance += amount
        }else{
            print("Input a invalid amount to deposit")
        }
        
    }
    
    //debit function the debit amount must be positive and the account balance must over 10 and for every withdraw, $1.00 is changed.
    public func debit(amount: Double){
        if amount > 0 {
            if account_balance-amount-1 > 10.00 {
                account_balance = account_balance-amount-1
            }else{
                print("You can not withdraw more than \(account_balance-11.00) dollars")
            }
        }
        else{
            print("Input a invalid amount to withdraw")
        }
    }
    
}
