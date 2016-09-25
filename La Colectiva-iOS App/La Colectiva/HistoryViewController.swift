//
//  HistoryViewController.swift
//  La Colectiva
//
//  Created by Vohra, Nikant on 9/25/16.
//  Copyright © 2016 Vohra, Nikant. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet weak var goBack: UIButton!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func goBackFromView(_ sender: AnyObject) {
        let _ = self.navigationController?.popViewController(animated: true)
        
    }

}
