//
//  UISearchViewController.swift
//  orangeMarketProject
//
//  Created by Vladimir Lobanov on 16.01.17.
//  Copyright © 2017 Vladimir Lobanov. All rights reserved.
//

import UIKit

class UISearchViewController: UIViewController {
    @IBOutlet weak var mainLogoImageView: UIImageView!

    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var mainSearchTableView: UITableView!

    
    
    
    @IBAction func didTapSearchButton(_ sender: UIButton) {
        
    }
    @IBAction func didTapSortByDateButton(_ sender: UIButton) {
        
    }
    @IBAction func didTapSortByPriceButton(_ sender: UIButton) {
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
