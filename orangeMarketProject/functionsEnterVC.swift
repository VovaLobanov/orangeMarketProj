//
//  functionsEnterVC.swift
//  orangeMarketProject
//
//  Created by Vladimir Lobanov on 20.01.17.
//  Copyright © 2017 Vladimir Lobanov. All rights reserved.
//

import Foundation
import FirebaseAuth
import Firebase

public func enterWithEmail (email: String?, pass: String?, completion: ) {
    
    var result: Bool = false
    
     FIRAuth.auth()?.signIn(withEmail: email!, password: pass!, completion: {
        user, error in
        if error != nil {
            print("ошибка со входом")
        }
        else {
            print("вход пользователя \(user?.email!) успешен")
            result = true
        }
    })

        print(result)
        return result
}

//bob.lob@mail.ru
//2020321420mail


public func isEmptyField (fields: String?...) -> Bool {
    var result: Bool = false
    for field in fields {
        if field == "" || field == nil {
        result = true
        }
        else {
        }
    }
    return result

}



