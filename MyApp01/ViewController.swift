//
//  ViewController.swift
//  MyApp01
//
//  Created by user22 on 2017/9/15.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    
    @IBAction func click(_ sender: Any) {
        myLabel.text = createLottery()
    }
    
    private func createLottery() -> String {
        var set:Set<Int> = []
        while set.count < 6 {
            set.insert(Int(arc4random_uniform(49)+1))
        }
        return set.description
    }
    
}

