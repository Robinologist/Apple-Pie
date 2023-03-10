//
//  ViewController.swift
//  Apple Pie
//
//  Created by Robin on 3/10/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var correctWordLabel: UILabel!
    
    @IBOutlet var treeImageView: UIImageView!
    
    @IBOutlet var scoreLabel: UILabel!
    
    @IBOutlet var letterButtons: [UIButton]!
    
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

