//
//  EventsViewController.swift
//  La Colectiva
//
//  Created by Vohra, Nikant on 9/24/16.
//  Copyright © 2016 Vohra, Nikant. All rights reserved.
//

import UIKit
import Alamofire

class EventsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var eventsTableView: UITableView!
    
    var events : [Event] = [Event(name: "Massive Flyering 🌟", detail: "To promote Women Collective in San Francisco", startDate: Date(), endDate: Date())]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.eventsTableView.delegate = self
        self.eventsTableView.dataSource = self
        // Do any additional setup after loading the view.
        self.eventsTableView.tableFooterView = UIView(frame: CGRect.zero)

        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        Alamofire.request(Utils.eventsUrl).responseJSON { response in
            debugPrint(response)
            
            if let json = response.result.value {
                print("JSON: \(json)")
                let jsonArray = json as! NSArray
                self.events.removeAll()
                for event in jsonArray {
                    let dictEvent = event as! NSDictionary
                    let newevent = Event(name: dictEvent["name"]! as! String, detail: dictEvent["detail"]! as! String, startDate: Date(), endDate: Date())
                    self.events.append(newevent)
                    
                }
                DispatchQueue.main.async {
                    self.eventsTableView.reloadData()
                }
                
            }
        }
        
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
