//
//  FunctionsRegisterVC.swift
//  orangeMarketProject
//
//  Created by Vladimir Lobanov on 20.01.17.
//  Copyright © 2017 Vladimir Lobanov. All rights reserved.
//

import Foundation
import FirebaseAuth

public func isEqualPasswords(pass1: String?, pass2: String?) -> Bool {
    if pass1 == pass2 {
        return true
    }
    else {
        return false
    }
}

public func isEmptyPassFields (pass1: String?, pass2: String?) -> Bool {
    if pass1 == "" || pass1 == nil || pass2 == "" || pass2 == nil{
        return true
    }
    else {
        return false
    }
}
 
