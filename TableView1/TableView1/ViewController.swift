//
//  ViewController.swift
//  TableView1
//
//  Created by ABHISHEK RAI on 15/10/19.
//  Copyright © 2019 ABHISHEK RAI. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var myTableView: UITableView!
    
    var array1 = ["Apple", "Baseball", "Color", "Dorian", "Elisium"]
    var array2 = ["apple", "ball", "catacomb", "delicious", "elephant"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1.count
     }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if self.lastSelection != nil {
//            self.myTableView.cellForRow(at: self.lastSelection)?.accessoryType = .none
//        }
//
//        self.myTableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
//        self.lastSelection = indexPath
//
//        self.myTableView.deselectRow(at: indexPath, animated: true)
//    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        // Add a visual cue to indicate that the cell was selected.
//        self.myTableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
//    }

//    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
//        // Invoked so we can prepare for a change in selection.
//        // Remove previous selection, if any.
//        if let selectedIndex = self.myTableView.indexPathForSelectedRow {
//            // Note: Programmatically deslecting does NOT invoke tableView(:didSelectRowAt:), so no risk of infinite loop.
//            self.myTableView.deselectRow(at: selectedIndex, animated: false)
//            // Remove the visual selection indication.
//            self.myTableView.cellForRow(at: selectedIndex)?.accessoryType = .none
//        }
//        return indexPath
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
    }

    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = .none
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1")
        cell?.textLabel?.text = array1[indexPath.row]
        cell?.detailTextLabel?.text = array2[indexPath.row]
        tableView.layer.cornerRadius = 10
        
        var image : UIImage = UIImage(named: "4-2.png")!
        print("The loaded image: \(image)")
        cell?.imageView?.image = image
        
        //cell?.separatorInset = UIEdgeInsets.zero
        //cell?.layoutMargins = UIEdgeInsets.zero
        cell?.separatorInset.left = 50
        return cell!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.myTableView.separatorColor = .systemPink
    
        
    }

}

