//
//  JobsViewController.swift
//  La Colectiva
//
//  Created by Vohra, Nikant on 9/24/16.
//  Copyright © 2016 Vohra, Nikant. All rights reserved.
//

import UIKit

class JobsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var jobsTableView: UITableView!
    var jobs : [Job] = [Job(name : "TestJob", user : User(name: "Nikant"))]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.jobsTableView.delegate = self
        self.jobsTableView.dataSource = self
        // Do any additional setup after loading the view.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return jobs.count
    }
    
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = jobsTableView.dequeueReusableCell(withIdentifier: "JobTableViewCell", for: indexPath) as! JobTableViewCell
        cell.configureWith(job : jobs[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath){
        
    }

}
