//
//  SignupViewController3.swift
//  La Colectiva
//
//  Created by Vohra, Nikant on 9/24/16.
//  Copyright © 2016 Vohra, Nikant. All rights reserved.
//

import UIKit

class SignupViewController3: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var programsTableView: UITableView!

    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var backButton: UIButton!
    
    var programs : [String] = ["Day Labor Program", "Women's Collective"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true;
        nextButton.layer.borderColor = UIColor(red: 223/255.0, green: 223/255.0, blue: 223/255.0, alpha: 1.0).cgColor
        // Do any additional setup after loading the view.
        nextButton.layer.borderWidth = 1.0
        backButton.layer.borderColor = UIColor(red: 223/255.0, green: 223/255.0, blue: 223/255.0, alpha: 1.0).cgColor
        // Do any additional setup after loading the view.
        backButton.layer.borderWidth = 1.0
        self.programsTableView.delegate = self
        self.programsTableView.dataSource = self
        self.programsTableView.rowHeight = 76.0
        self.programsTableView.tableFooterView = UIView(frame: CGRect.zero)
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return programs.count
    }
    
    
    @IBAction func goBack(_ sender: AnyObject) {
        let _ = self.navigationController?.popViewController(animated: true)

    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = programsTableView.dequeueReusableCell(withIdentifier: "ProgramTableViewCell", for: indexPath) as! ProgramTableViewCell
        cell.configureWith(program: programs[indexPath.row])
        cell.selectionStyle = .none
        if(cell.checkMarked) {
            cell.checkmarkIcon.isHidden = false
        }
        else {
            cell.checkmarkIcon.isHidden = true
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath){
        let cell = tableView.cellForRow(at: indexPath) as! ProgramTableViewCell
        cell.checkMarked = !cell.checkMarked
        programsTableView.reloadData()
    }
}
