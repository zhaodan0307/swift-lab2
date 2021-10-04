//
//  BankAccountExtension.swift
//  BankAccount
//
//  Created by Dan Zhao on 2021-10-03.
//

import Foundation

extension BankAccount{
    
    //computed property interest
    public var interest: Double{
        return account_balance*yearly_rate/100;
    }
    
    // convenience initializer: account number, customer's name and account balance supplied, yearly interest rate set to 0
    public convenience init?(account_number:Int,customer_name:String,account_balance:Double){
        if account_number <= 0 || customer_name.capitalized != customer_name || account_balance < 10.00{
            
            return nil
        }
        else{
            self.init(account_number:account_number, customer_name:customer_name,account_balance:account_balance,yearly_rate:0.02)
        }
        
        
    }
}
