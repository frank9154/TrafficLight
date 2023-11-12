//
//  ViewController.swift
//  TrafficLight
//
//  Created by Александр Соколов on 12.11.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var trafficLightRed: UIView!
    @IBOutlet var trafficLightYellow: UIView!
    @IBOutlet var trafficLightGreen: UIView!
    @IBOutlet var startNextButton: UIButton!
    
    var currentLightIndex = 0
    let lightColors: [UIColor] = [.red, .yellow, .green]

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trafficLightRed.alpha = 0
        trafficLightYellow.alpha = 0
        trafficLightGreen.alpha = 0
    }

    @IBAction func StartNext(_ sender: UIButton) {
        
        if sender.currentTitle == "START" {
            trafficLightRed.alpha = 0.3
            trafficLightYellow.alpha = 0.3
            trafficLightGreen.alpha = 0.3
            startNextButton.setTitle("NEXT", for: .normal)
            
        } else {
            currentLightIndex += 1
            if currentLightIndex >= lightColors.count {
                currentLightIndex = 0
            }
            
            switch currentLightIndex {
            case 0:
                trafficLightRed.alpha = 1
                trafficLightYellow.alpha = 0.3
                trafficLightGreen.alpha = 0.3
            
            case 1:
                trafficLightRed.alpha = 0.3
                trafficLightYellow.alpha = 1
                trafficLightGreen.alpha = 0.3
                
            case 2:
                trafficLightRed.alpha = 0.3
                trafficLightYellow.alpha = 0.3
                trafficLightGreen.alpha = 1
               
            default:
                break
                
            }
            
        }
    }
    
}

