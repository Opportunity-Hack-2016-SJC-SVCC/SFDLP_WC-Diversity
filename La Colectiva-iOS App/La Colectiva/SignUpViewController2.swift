//
//  SignUpViewController2.swift
//  La Colectiva
//
//  Created by Vohra, Nikant on 9/24/16.
//  Copyright © 2016 Vohra, Nikant. All rights reserved.
//

import UIKit

class SignUpViewController2: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var workOptionsTableView: UITableView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    var options : [String] = ["Painting", "Demolition", "Yard Work", "Moving", "Gardening", "Cleaning", "Order Taking", "Supervising", "Volunteering", "Others"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true;
        nextButton.layer.borderColor = UIColor(red: 223/255.0, green: 223/255.0, blue: 223/255.0, alpha: 1.0).cgColor
        // Do any additional setup after loading the view.
        nextButton.layer.borderWidth = 1.0
        backButton.layer.borderColor = UIColor(red: 223/255.0, green: 223/255.0, blue: 223/255.0, alpha: 1.0).cgColor
        // Do any additional setup after loading the view.
        backButton.layer.borderWidth = 1.0
        self.workOptionsTableView.delegate = self
        self.workOptionsTableView.dataSource = self
        self.workOptionsTableView.rowHeight = 76.0
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return options.count
    }
    
    
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = workOptionsTableView.dequeueReusableCell(withIdentifier: "WorkOptionTableViewCell", for: indexPath) as! WorkOptionTableViewCell
        cell.configureWith(option: options[indexPath.row])
        cell.selectionStyle = .none
        if(cell.checkMarked) {
            cell.checkMarkIcon.isHidden = false
        }
        else {
            cell.checkMarkIcon.isHidden = true
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath){
        let cell = tableView.cellForRow(at: indexPath) as! WorkOptionTableViewCell
        cell.checkMarked = !cell.checkMarked
        workOptionsTableView.reloadData()
    }


}
