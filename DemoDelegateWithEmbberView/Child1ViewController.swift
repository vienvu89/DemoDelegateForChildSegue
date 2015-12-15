//
//  Child1ViewController.swift
//  DemoDelegateWithEmbberView
//
//  Created by Vien Vu  on 12/15/15.
//  Copyright © 2015 VienVu. All rights reserved.
//

import UIKit

protocol Child1Delegate {
    func userTapOnChild1()
}

class Child1ViewController: UIViewController {
    
    var delegate : Child1Delegate!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func child1ButtonIsTapped(sender: AnyObject) {
        if let _delegate = delegate {
            _delegate.userTapOnChild1()
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
