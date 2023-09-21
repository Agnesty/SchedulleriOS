//
//  ViewController.swift
//  SchedulleriOS
//
//  Created by Agnes Triselia Yudia on 21/09/23.
//

import UIKit

class ViewController: UIViewController {
    let example = TimerExample()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        example.startTimer()
    }
    
}

