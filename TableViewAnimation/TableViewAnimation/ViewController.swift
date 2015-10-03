//
//  BouncingTableViewController.swift
//  new instagram
//
//  Created by Amey Jain on 6/18/15.
//  Copyright (c) 2015 Amey Jain. All rights reserved.
//

import UIKit


class ViewController: UITableViewController {
    
    var TableArray = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableArray = ["Frist item","Second item","Third item","Fourth item","Fifth item","Sixth item","Seventh item", "Eighth item", "Ninth item"]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidAppear(animated: Bool) {
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TableArray.count
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell,
        forRowAtIndexPath indexPath: NSIndexPath) {
            TipInCellAnimator.animate(cell)
            
    }

    
       override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return tableView.frame.height/3
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let cell1 = tableView.dequeueReusableCellWithIdentifier(TableArray[indexPath.row], forIndexPath: indexPath)
        
        cell1.textLabel?.textColor = UIColor.whiteColor()
        cell1.textLabel?.text = self.TableArray[indexPath.row]
       // cell1.backgroundView =
        if ( indexPath.row == 0 || indexPath.row == 6){
            cell1.textLabel?.frame = CGRectMake(15, 15, self.view.frame.width, tableView.frame.height/3 - 20)
            cell1.textLabel?.backgroundColor = UIColor (patternImage: UIImage(named: "background")!)
        }
        else if (indexPath.row == 1 || indexPath.row == 7){
            cell1.textLabel?.backgroundColor = UIColor (patternImage: UIImage(named: "background1")!)
        }
        else if (indexPath.row == 2 || indexPath.row == 8){
            cell1.textLabel?.backgroundColor = UIColor (patternImage: UIImage(named: "wallpaper")!)
        }
        else if (indexPath.row == 3 || indexPath.row == 9){
            cell1.textLabel?.backgroundColor = UIColor (patternImage: UIImage(named: "image1")!)
        }
        else if (indexPath.row == 4){
            cell1.textLabel?.backgroundColor = UIColor (patternImage: UIImage(named: "image2")!)
        }
        else if (indexPath.row == 5){
            cell1.textLabel?.backgroundColor = UIColor (patternImage: UIImage(named: "image3")!)
        }
        return cell1
    }
    
    
    @IBAction func refreshButtonPressed(sender: AnyObject) {
        tableView.reloadData()
    }
    
    
}
