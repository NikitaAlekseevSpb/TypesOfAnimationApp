//
//  ViewController.swift
//  TypesOfAnimation
//
//  Created by MacBook on 27.04.2021.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    @IBOutlet var nameBotton: UIButton!
    
    @IBOutlet var presentLable: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forseLable: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    let animations = Animation.getAnimations()
    
    private var animationStarted = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameBotton.setTitle("Run", for: .normal)
    }
   
    @IBAction func showAnimation() {
        
        if animationStarted {
        guard let animation = animations.randomElement() else {return}
        animationView.animation = animation.present
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.animate()
        
        presentLable.text = "Present: \(animation.present)"
        curveLabel.text = "Curve: \(animation.curve)"
        forseLable.text = "Forse: \(String(format: "%.2f", animation.force))"
        durationLabel.text = "Duration: \(String(format: "%.2f", animation.duration))"
        delayLabel.text = "Delay: \(String(format: "%.2f", animation.delay))"
        //} else {
            nameBotton.setTitle(animation.present, for: .normal)
        }
    }

}

