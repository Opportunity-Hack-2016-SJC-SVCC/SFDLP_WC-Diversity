//
//  SignupViewController1.swift
//  La Colectiva
//
//  Created by Vohra, Nikant on 9/24/16.
//  Copyright © 2016 Vohra, Nikant. All rights reserved.
//

import UIKit

class SignupViewController1: UIViewController {

    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true;
        nextButton.layer.borderColor = UIColor(red: 223/225.0, green: 223/225.0, blue: 223/225.0, alpha: 1.0).cgColor
        // Do any additional setup after loading the view.
        nextButton.layer.borderWidth = 1.0
        backButton.layer.borderColor = UIColor(red: 223/225.0, green: 223/225.0, blue: 223/225.0, alpha: 1.0).cgColor
        // Do any additional setup after loading the view.
        backButton.layer.borderWidth = 1.0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func goBack(_ sender: AnyObject) {
        let _ = self.navigationController?.popViewController(animated: true)
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
