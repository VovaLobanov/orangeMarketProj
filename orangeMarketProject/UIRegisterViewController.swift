//
//  UIRegisterViewController.swift
//  orangeMarketProject
//
//  Created by Vladimir Lobanov on 20.01.17.
//  Copyright © 2017 Vladimir Lobanov. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase


class UIRegisterViewController: UIViewController {

    @IBOutlet weak var firstPassField: UITextField!
    @IBOutlet weak var phoneNumberField: UITextField!
    @IBOutlet weak var secondPassField: UITextField!
    
    @IBOutlet weak var successField: UILabel!
    
    @IBAction func didTapRegisterButton(_ sender: AnyObject) {
       
        if isEmptyPassFields(pass1: firstPassField.text!, pass2: secondPassField.text!) {
            // в случае пустых полей пароля
            successField.text = "Введите пароль"
        }
        else{
            
            if isEqualPasswords(pass1: firstPassField.text!, pass2: secondPassField.text!) {
                // в случае совпадающих паролей регистрируем:
                
                    FIRAuth.auth()?.createUser(withEmail: phoneNumberField.text!, password: firstPassField.text!, completion: {
                    user, error in
                        if error != nil {

                            self.successField.text = "пользователь уже зарегистрирован,\n либо неправильно введён e-mail"
                        }
                        else {
                            self.successField.text = "Вы успешно зарегистрированы.\nВы можете войти, используя свои данные"
                            print("регистрация пользователя \(self.phoneNumberField.text!) с паролем \(self.firstPassField.text!)")
                        }
                    })

                
            }
                // если пароли не совпадают, выдаём ошибку
            else{
             successField.text = "Не совпадают пароли. \n Проверьте правильность ввода"
            }
        }
       
        

        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
