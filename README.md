# iOSAnimateTable

To add this animation to your table view
1. import CellAnimate.swift in your project
2. ADD following code in your TableViewController
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell,
        forRowAtIndexPath indexPath: NSIndexPath) {
            TipInCellAnimator.animate(cell)
            
    }
3. You can edit CellAnimate.swift to change Animation time or change tilt angle.

![alt tag](https://github.com/ameyjain/iOSAnimateTable/blob/master/rzrf0.gif)


