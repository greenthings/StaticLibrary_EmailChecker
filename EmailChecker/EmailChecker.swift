//
//  EmailChecker.swift
//  EmailChecker
//
//  Created by greenthings on 2023/08/13.
//

import Foundation

public class EmailCheckerClass {
    // For this, We shoud init
    // and we can make instance
    public init(){
        
    }

    // Return True or False
    public static func validateEmailBool(email: String) -> Bool{
        
        
        // Valid Email Format
        let emailReg1 = "[A-Z0-9a-z._]+@[A-Za-z0-9.-]+\\.[A-Za-z]{3}"
        let emailReg2 = "[A-Z0-9a-z._]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2}+\\.[A-Za-z]{2}"
        
        // Unvalid Email Format
        let emailRegLocal = "[A-Z0-9a-z._]{0,33}+@"
        let emailRegDomain = "[A-Z0-9a-z._]{0,33}+@[A-Za-z0-9.-]{1,33}"
        
        
        let emailTest1 = NSPredicate(format:"SELF MATCHES %@", emailReg1)
        let emailTest2 = NSPredicate(format:"SELF MATCHES %@", emailReg2)
        let emailTest3 = NSPredicate(format:"SELF MATCHES %@", emailRegLocal)
        let emailTest4 = NSPredicate(format:"SELF MATCHES %@", emailRegDomain)
        
        let emailvalid1 = emailTest1.evaluate(with: email)
        let emailvalid2 = emailTest2.evaluate(with: email)
        let emailunvalid1 = emailTest3.evaluate(with: email)
        let emailunvalid2 = emailTest4.evaluate(with: email)
        
        if emailvalid1 || emailvalid2 == true{
            print("Valid!")
            return true
        }else if emailunvalid1 == true && emailunvalid2 == false{
            print("There is no domain")
            return false
        }else if emailunvalid2 == true && emailvalid1 == false{
            print("There is no top domain")
            return false
        }else{
            print("Invalid Entirely")
            print("reason: \(emailvalid1)")
            print("reason: \(emailvalid2)")
            print("reason: \(emailunvalid1)")
            print("reason: \(emailvalid2)")
            return false
        }
    }
    
    // Return String
    public static func validateEmailString(email: String) -> String{
        
        
        // Valid Email Format
        let emailReg1 = "[A-Z0-9a-z._]+@[A-Za-z0-9.-]+\\.[A-Za-z]{3}"
        let emailReg2 = "[A-Z0-9a-z._]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2}+\\.[A-Za-z]{2}"
        
        // Unvalid Email Format
        let emailRegLocal = "[A-Z0-9a-z._]{0,33}+@"
        let emailRegDomain = "[A-Z0-9a-z._]{0,33}+@[A-Za-z0-9.-]{1,33}"
        

        let emailTest1 = NSPredicate(format:"SELF MATCHES %@", emailReg1)
        let emailTest2 = NSPredicate(format:"SELF MATCHES %@", emailReg2)
        let emailTest3 = NSPredicate(format:"SELF MATCHES %@", emailRegLocal)
        let emailTest4 = NSPredicate(format:"SELF MATCHES %@", emailRegDomain)
        
        let emailvalid1 = emailTest1.evaluate(with: email)
        let emailvalid2 = emailTest2.evaluate(with: email)
        let emailunvalid1 = emailTest3.evaluate(with: email)
        let emailunvalid2 = emailTest4.evaluate(with: email)
        
        if emailvalid1 || emailvalid2 == true{
            print("Valid!")
            return "Valid"
        }else if emailunvalid1 == true && emailunvalid2 == false{
            print("There is no domain")
            return "There is no domain"
        }else if emailunvalid2 == true && emailvalid1 == false{
            print("There is no top domain")
            return "There is no top domain"
        }else{
            print("Invalid Entirely")
            print("reason: \(emailvalid1)")
            print("reason: \(emailvalid2)")
            print("reason: \(emailunvalid1)")
            print("reason: \(emailvalid2)")
            return "Invalid Entirely"
        }
    }
}
