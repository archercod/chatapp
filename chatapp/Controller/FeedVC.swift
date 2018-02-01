//
//  FirstViewController.swift
//  chatapp
//
//  Created by Marcin Pietrzak on 25/01/2018.
//  Copyright © 2018 Marcin Pietrzak. All rights reserved.
//

import UIKit

class FeedVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var messageArray = [Message]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        DataService.instance.getAllFeedMessages { (returnedMessagesArray) in
            self.messageArray = returnedMessagesArray
            self.tableView.reloadData()
        }
    }

}

extension FeedVC: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "feedCell", for: indexPath) as? FeedCell else { return UITableViewCell() }
        
        let image = UIImage(named: "defaultProfileImage")
        let message = messageArray[indexPath.row]
        
        cell.configureCell(profileImage: image!, email: message.senderID, content: message.content)
        return cell
        
    }
    
}
