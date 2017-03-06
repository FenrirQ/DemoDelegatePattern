//
//  ViewControllerAfter.swift
//  delegatePattern
//
//  Created by Trương Thắng on 2/21/17.
//  Copyright © 2017 Trương Thắng. All rights reserved.
//

import UIKit

protocol ButtonViewControllerProtocol: class {
    func changeLabelText(with text: String)
    func abc(sender: Any)
}


class ButtonViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var button: UIButton!
    
    weak var delegate: ButtonViewControllerProtocol? {
        didSet {
            if let vc = delegate as? LabelViewController {
                button.addTarget(vc, action: #selector(vc.abc(sender:)) , for: .touchUpInside)
                
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func change(_ sender: Any) {
        delegate?.changeLabelText(with: textField.text ?? "")
    }
    
}




