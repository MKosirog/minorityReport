//
//  ViewController.swift
//  minorityReport
//
//  Created by Mark C. Kosirog on 6/16/16.
//  Copyright © 2016 Mark C. Kosirog. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var theFutureLabel: UILabel!
    @IBOutlet weak var preCogsLabel: UILabel!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    @IBAction func onDrag(sender: UIPanGestureRecognizer)
    {
        let point = sender.locationInView(view)
        theFutureLabel.center = point
        if sender.state == .Ended
        {
           UIView.animateWithDuration(0.5, animations:
            {
                self.theFutureLabel.center = self.view.center
            })
        }
        else if CGRectContainsPoint(preCogsLabel.frame, point)
        {
            
            let myAlert = UIAlertController(title: "Minority Report", message: "PreCog Detected!", preferredStyle: UIAlertControllerStyle.Alert)
            myAlert.addAction(UIAlertAction(title: "Arrest Them!", style: .Default, handler: nil))
            myAlert.addAction(UIAlertAction(title: "Let Em Go!", style: .Default, handler: nil))
            presentViewController(myAlert, animated: true, completion: nil)
        }
    }
    
    
   }

