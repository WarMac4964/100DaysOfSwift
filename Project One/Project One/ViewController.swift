//
//  ViewController.swift
//  Project One
//
//  Created by Anurag Tyagi on 07/05/24.
//

import UIKit

class ViewController: UITableViewController {
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        
        for item in items{
            if item.hasPrefix("nssl"){
                // this is a picture to load!
                pictures.append(item)
            }
        }
        
        print(pictures)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pictures", for: indexPath)
        
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
}

