//
//  TableViewController.swift
//  ReUse TableView Cell
//
//  Created by Dave on 5/4/18.
//  Copyright © 2018 High Tree Development. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var dataArray: [SpongeBob] = [SpongeBob]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create some dummy data to fill out array
        //
        dataArray.append(SpongeBob(header: "Happy", image: #imageLiteral(resourceName: "Happy"), footer: "SpongeBob"))
        dataArray.append(SpongeBob(header: "Glasses", image: #imageLiteral(resourceName: "Glasses"), footer: "SpongeBob"))
        dataArray.append(SpongeBob(header: "Imagination", image: #imageLiteral(resourceName: "Imagination"), footer: "SpongeBob"))
        dataArray.append(SpongeBob(header: "Mocking", image: #imageLiteral(resourceName: "Mocking"), footer: "SpongeBob"))
        
        // Register the Xib for our cell
        //
        let nib = UINib.init(nibName: "MyCustomCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "MyCustomCell")
        tableView.rowHeight = 200
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source
    //
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCustomCell", for: indexPath) as! MyCustomCell
        cell.titleLabel.text = dataArray[indexPath.row].header
        cell.pictureImageView.image = dataArray[indexPath.row].image
        cell.footerLabel.text = dataArray[indexPath.row].footer
        cell.backgroundColor = UIColor.blue
        return cell
    }
}
