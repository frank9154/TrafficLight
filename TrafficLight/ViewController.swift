//
//  ViewController.swift
//  TrafficLight
//
//  Created by Александр Соколов on 12.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var trafficLightRed: UIView!
    @IBOutlet var trafficLightYellow: UIView!
    @IBOutlet var trafficLightGreen: UIView!
    @IBOutlet var startNextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func StartNext(_ sender: Any) {
    }
    
}

