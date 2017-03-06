//
//  ViewController.swift
//  delegatePattern
//
//  Created by Trương Thắng on 2/21/17.
//  Copyright © 2017 Trương Thắng. All rights reserved.
//

import UIKit

class LabelViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

// MARK: -

extension LabelViewController: ButtonViewControllerProtocol {
    func changeLabelText(with text: String) {
        label?.text = text
    }
    
    func abc(sender: Any) {
        print((sender as! UIButton).titleLabel ?? "")
    }
}
