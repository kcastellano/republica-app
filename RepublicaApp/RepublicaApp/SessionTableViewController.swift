//
//  SessionTableViewController.swift
//  RepublicaApp
//
//  Created by Khaterine Castellano on 5/8/17.
//  Copyright © 2017 Kate Castellano. All rights reserved.
//

import UIKit

class SessionTableViewController : UITableViewController {
    
    //MARK: Properties
    
    var sessions = [Session]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // load session information
        loadSessionInformation()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sessions.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "SessionTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? SessionTableViewCell  else {
            fatalError("The dequeued cell is not an instance of SessionTableViewCell.")
        }
        
        // Fetches the appropriate meal for the data source layout.
        let session = sessions[indexPath.row]
        
        cell.nameLabel.text = session.name
        cell.photoImageView.image = session.speaker.photo
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PresentDetailSegue" ,
            let nextScene = segue.destination as? SessionDetailViewController ,
            let indexPath = self.tableView.indexPathForSelectedRow {
            let selectedSession = sessions[indexPath.row]
            nextScene.selectedSession = selectedSession
            
        }
    }
    
   
    private func loadSessionInformation() {
        
        let firstPhoto = UIImage(named: "kate_castellano")
        let firstSpeaker = Speaker(name: "Khaterine Castellano", photo: firstPhoto, ocupation:"Program committee member @ codemotion")
        
        let firstSession = Session(name: "Codemotion Berlin Talk: Taking a bite from the Apple, beginner's workshop for iOS Development", shortThesis: "In this fast paced world, people don’t conform with being only viewers, they want to also be makers. In this short workshop we will be hands-on with the development of a small iOS Application that will allow you to become confortable with the development tools and come up with your future app ideas.", language: "English", sessionType: .talk, sessionLevel: .beginner, date: Date(), speaker: firstSpeaker!)
        
        
        let secondPhoto = UIImage(named: "anonymous")
        let secondSpeaker = Speaker(name: "John Doe", photo: secondPhoto, ocupation:"hacktivist @ anonymous")
        
        let secondSession = Session(name: "How to be a the second speaker of this app", shortThesis: "I am here as a photo placement to ilustrate how this would look with two speakers", language: "English", sessionType: .workshop, sessionLevel: .advanced, date: Date(), speaker: secondSpeaker!)
        
        
        sessions.append(firstSession!)
        sessions.append(secondSession!)
    }
    
}
