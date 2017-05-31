//
//  ViewController.swift
//  TabAndHold
//
//  Created by Wang Shilong on 5/29/17.
//  Copyright © 2017 Will Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBOutlet weak var midCounterLabel: UILabel!
    
    @IBOutlet weak var botCounterLabel: UILabel!
    
    var count = 0
    
    
    
    @IBAction func tapButton(_ sender: UIButton) {
        increaseCount()
    }

    @IBAction func holdButton(_ sender: UILongPressGestureRecognizer) {
        increaseCount()
    }
    
    @IBAction func resetCounter(_ sender: UIBarButtonItem) {
        counterLabel.text = "0"
        count = 0
    }
    
    
    func increaseCount() {
        count += 1
        counterLabel.text = String(count)
        midCounterLabel.text = String(count)
        botCounterLabel.text = String(count)
    }


}

