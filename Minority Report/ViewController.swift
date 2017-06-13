//
//  ViewController.swift
//  Minority Report
//
//  Created by Ronak Chaudhuri on 6/13/17.
//  Copyright © 2017 Ronak Chaudhuri. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var preCogsLabel: UILabel!
    @IBOutlet weak var futureLabel: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    @IBAction func onDrag(_ sender: UIPanGestureRecognizer)
    {
        print("Drag")
        
        let point = sender.location(in: view)
        print(point)
        futureLabel.center = point
        
        
        if sender.state == .ended
        {
            print("End")
            UIView.animate(withDuration: 0.75, animations:
                {
                self.futureLabel.center = self.view.center
            })
        }
    }

    }




