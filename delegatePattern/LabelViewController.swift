//
//  ViewController.swift
//  delegatePattern
//
//  Created by Trương Thắng on 2/21/17.
//  Copyright © 2017 Trương Thắng. All rights reserved.
//

import UIKit

class LabelViewController: UIViewController, buttonViewControllerDelegate {
    
    @IBOutlet weak var nameLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changeLabelText(string: String) {
        nameLabel.text = string
    }
}
