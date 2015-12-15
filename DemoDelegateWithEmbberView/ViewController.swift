//
//  ViewController.swift
//  DemoDelegateWithEmbberView
//
//  Created by Vien Vu  on 12/15/15.
//  Copyright © 2015 VienVu. All rights reserved.
//

import UIKit


class ViewController: UIViewController, Child2Delegate, Child1Delegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func userTapOnChild2() {
        let alertController = UIAlertController(title: "Child2", message: "I come from child 2", preferredStyle: .Alert)
        let action = UIAlertAction(title: "OK", style: .Cancel, handler: nil)
        alertController.addAction(action)
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    func userTapOnChild1() {
        let alertController = UIAlertController(title: "Child1", message: "I come from child 1", preferredStyle: .Alert)
        let action = UIAlertAction(title: "OK", style: .Cancel, handler: nil)
        alertController.addAction(action)
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SegueChild1" {
            let controller = segue.destinationViewController as! Child1ViewController
            controller.delegate = self
        }
        if segue.identifier == "SegueChild2" {
            let controller = segue.destinationViewController as!Child2ViewController
            controller.delegate = self
        }
    }

}



