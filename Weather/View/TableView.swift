//
//  TableView.swift
//  Weather
//
//  Created by George Nanyan on 01/11/2017.
//  Copyright © 2017 George Nanyan. All rights reserved.
//

import UIKit

class TableView: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let identifier = segue.identifier {
            switch (identifier) {
            case "MoscowSegue":
                if let vc = segue.destination as? ViewController {
                    vc.location = "Moscow"
                }
            case "BerlinSegue":
                if let vc = segue.destination as? ViewController {
                    vc.location = "Berlin"
            }
            case "ParisSegue":
                if let vc = segue.destination as? ViewController {
                    vc.location = "Paris"
            }
            case "SingaporeSegue":
                if let vc = segue.destination as? ViewController {
                    vc.location = "Singapore"
            }
            case "TokyoSegue":
                if let vc = segue.destination as? ViewController {
                    vc.location = "Tokyo"
            }
            case "BeijingSegue":
                if let vc = segue.destination as? ViewController {
                    vc.location = "Beijing"
            }
            case "BarcelonaSegue":
                if let vc = segue.destination as? ViewController {
                    vc.location = "Barcelona"
            }
            case "LisbonSegue":
                if let vc = segue.destination as? ViewController {
                    vc.location = "Lisbon"
            }
            case "WarsawSegue":
                if let vc = segue.destination as? ViewController {
                    vc.location = "Warsaw"
            }
            case "LuxemburgSegue":
                if let vc = segue.destination as? ViewController {
                    vc.location = "Luxemburg"
            }
            default:
                break
            }
        }
        
    }

}







