//
//  MyTableViewController.swift
//  ListViewApp_BrianLim
//
//  Created by Brian Lim on 10/24/16.
//  Copyright © 2016 Brian Lim. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    var animalNames = ["Akita", "Baboon", "Caiman", "Dachshund", "Eagle", "Falcon", "Galapagos Penguin", "Hammerhead Shark", "Ibis", "Jack Russel", "Kakapo", "Labradoodle", "Macaroni Penguin", "Newt", "Ocelot", "Pademelon", "Quail", "Rabbit", "Saint Benard", "Tang", "Uakari", "Vampire Bat", "Wallaby", "X-Ray Tetra", "Yak", "Zebra"]
    
    var animalImages = ["akita", "baboon", "caiman", "dachshund", "eagle", "falcon", "galapagos_penguin", "hammerhead_shark", "ibis", "jack_russel", "kakapo", "labradoodle", "macaroni_penguin", "newt", "ocelot", "pademelon", "quail", "rabbit", "saint_bernard", "tang", "uakari", "vampire_bat", "wallaby", "x-ray_tetra", "yak", "zebra"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return animalNames.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "animalID"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! MyTableViewCell

        // Configure the cell...
        cell.cellAnimalName?.text = animalNames[indexPath.row]
        cell.cellAnimalImage?.image = UIImage(named: animalImages[indexPath.row])
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "ShowAnimalDetail"
        {
        
            if let indPath = self.tableView.indexPathForSelectedRow
            {
                let detailViewController = segue.destinationViewController as! MyDetailViewController
                detailViewController.LabelTextText = self.animalNames[indPath.row]
                detailViewController.LabelImageText = self.animalImages[indPath.row]
            }
            
        }
    }
    

}
