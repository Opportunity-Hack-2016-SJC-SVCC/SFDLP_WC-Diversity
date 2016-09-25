//
//  SignupViewController5.swift
//  La Colectiva
//
//  Created by Vohra, Nikant on 9/24/16.
//  Copyright © 2016 Vohra, Nikant. All rights reserved.
//

import UIKit
import Alamofire

class SignupViewController5: UIViewController {

    @IBOutlet weak var indicator: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true;
        
        // Do any additional setup after loading the view.
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        indicator.startAnimating()
        
        // Runs after 1 second on the main queue.
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2) ) {
            self.indicator.stopAnimating()
            let params = ["name" : Utils.currentUser?.name, "password" : Utils.currentUser?.password, "email" : Utils.currentUser?.email]
            
            Alamofire.request(Utils.apiurl, method: .post, parameters: params, encoding: URLEncoding.default)
                .responseJSON { response in
                    print(response.result)
            }
            self.performSegue(withIdentifier: "DoneSignupSegue", sender: self)
        }
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
