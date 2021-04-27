//
//  ViewController.swift
//  TypesOfAnimation
//
//  Created by MacBook on 27.04.2021.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var presentLable: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forseLable: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    let animations = Animation.getAnimations()
    
    private var animationStarted = false
    
    @IBAction func showAnimation() {
        
        
    }
    

}

