//
//  ViewContainerController.swift
//  delegatePattern
//
//  Created by Trương Thắng on 2/21/17.
//  Copyright © 2017 Trương Thắng. All rights reserved.
//

import UIKit

struct SegueIdentifier {
    static let labelVC = "LabelViewController"
    static let buttonVC = "ButtonViewController"
}

class ContainerVC: UIViewController {
    var labelVC : LabelViewController?
    var buttonVC : ButtonViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier ?? "" {
        case SegueIdentifier.labelVC:
            labelVC = segue.destination as? LabelViewController
            
        case SegueIdentifier.buttonVC:
            buttonVC = segue.destination as? ButtonViewController
        default:
            return
        }
        
        defer {
            setDelegate()
        }
    }
    
    func setDelegate() {
        buttonVC?.delegate = labelVC

    }
    
}
