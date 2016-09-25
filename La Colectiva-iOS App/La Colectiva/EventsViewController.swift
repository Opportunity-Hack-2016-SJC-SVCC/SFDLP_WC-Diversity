//
//  EventsViewController.swift
//  La Colectiva
//
//  Created by Vohra, Nikant on 9/24/16.
//  Copyright © 2016 Vohra, Nikant. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var eventsTableView: UITableView!
    
    var events : [Event] = [Event(name: "TEst", detail: "Test", startDate: Date(), endDate: Date())]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.eventsTableView.delegate = self
        self.eventsTableView.dataSource = self
        // Do any additional setup after loading the view.
        self.eventsTableView.tableFooterView = UIView(frame: CGRect.zero)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return events.count
    }
    
    
    func tableView(_ tableView: UITableView,
                       cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = eventsTableView.dequeueReusableCell(withIdentifier: "EventTableViewCell", for: indexPath) as! EventTableViewCell
        cell.configureWith(event: events[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath){
        
    }

    
   
}
