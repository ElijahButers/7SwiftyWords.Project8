//
//  ViewController.swift
//  7SwiftyWords.Project8
//
//  Created by User on 3/16/16.
//  Copyright © 2016 Elijah Buters. All rights reserved.
//

import UIKit
import GameplayKit
class ViewController: UIViewController {
    
    var letterButtons = [UIButton]()
    var activatedButtons = [UIButton]()
    var solutions = [String]()
    
    var score = 0
    var level = 1
    
    // Outlets
    @IBOutlet weak var cluesLabel: UILabel!
    @IBOutlet weak var answersLabel: UILabel!
    @IBOutlet weak var currentAnswer: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for subview in view.subviews where subview.tag == 1001 {
            
            let btn = subview as! UIButton
            letterButtons.append(btn)
            btn.addTarget(self, action: "letterTapped:", forControlEvents: .TouchUpInside)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Actions

    @IBAction func submitTapped(sender: AnyObject) {
    }

    @IBAction func clearTapped(sender: AnyObject) {
    }
}

