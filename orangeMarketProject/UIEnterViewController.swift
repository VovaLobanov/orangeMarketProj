//
//  UIEnterViewController.swift
//  orangeMarketProject
//
//  Created by Vladimir Lobanov on 20.01.17.
//  Copyright © 2017 Vladimir Lobanov. All rights reserved.
//

import UIKit

class UIEnterViewController: UIViewController {

    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    
    
    @IBAction func didTapEnterButton(_ sender: Any) {
        if isEmptyField(fields: passField.text!){
            print ("пустое поле пароля")
        }
        else if isEmptyField(fields: emailField.text!){
            print ("пустое поле email")
        }
        else{
            if enterWithEmail(email: emailField.text!, pass: passField.text!) {
                self.performSegue(withIdentifier: "enterSegue", sender: nil)
                
            }
            else {
              
                
            }
        }
        
    }
    
    @IBAction func didTapRegisterButton(_ sender: Any) {
       
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
