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
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true;
        nextButton.layer.borderColor = UIColor(red: 223/255.0, green: 223/255.0, blue: 223/255.0, alpha: 1.0).cgColor
        // Do any additional setup after loading the view.
        nextButton.layer.borderWidth = 1.0
        backButton.layer.borderColor = UIColor(red: 223/255.0, green: 223/255.0, blue: 223/255.0, alpha: 1.0).cgColor
        // Do any additional setup after loading the view.
        backButton.layer.borderWidth = 1.0
        self.nameTextField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func goBack(_ sender: AnyObject) {
        let _ = self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func nextPage(_ sender: AnyObject) {
        Utils.currentUser = User(name: self.nameTextField.text!, email: self.emailTextField.text!, password: self.passwordTextField.text!)
        self.performSegue(withIdentifier: "nextSegue", sender: self)
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
