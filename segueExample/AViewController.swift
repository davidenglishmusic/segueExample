//
//  AViewController.swift
//  segueExample
//
//  Created by David English on 2015-12-10.
//  Copyright © 2015 David English. All rights reserved.
//

import UIKit

class AViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func respondToButton(sender: AnyObject) {
        let confirmAlert = UIAlertController(title: "segueExample", message: "Are you sure you wish to proceed?", preferredStyle: UIAlertControllerStyle.Alert)
        
        confirmAlert.addAction(UIAlertAction(title: "Yes", style: .Default, handler: { (action: UIAlertAction!) in
            self.performSegueWithIdentifier("goToB", sender: self)
        }))
        
        confirmAlert.addAction(UIAlertAction(title: "No", style: .Default, handler: { (action: UIAlertAction!) in
        }))
        
        presentViewController(confirmAlert, animated: true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!){
        if (segue.identifier == "goToB") {
            if let bViewController = segue.destinationViewController as? BViewController {
                bViewController.receivedData = "Welcome to B"
            }
        }
    }
}

