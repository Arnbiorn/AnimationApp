//
//  AnimationViewController.swift
//  AnimationApp
//
//  Created by Егор Скрутелев on 27.02.2021.
//

import Spring

class AnimationViewController: UIViewController {
    
    @IBOutlet var coreAnimationView: UIView!
    @IBOutlet var springAnimationView: SpringView!
    
    private var originCoordinate: CGFloat?
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        originCoordinate = coreAnimationView.frame.origin.x
    }
    
    @IBAction func coreAnimationButtonPressed(_ sender: UIButton) {
        sender.pulsate()
        
        UIView.animate(
            withDuration: 0.5,
            delay: 0,
            options: [.autoreverse, .repeat]) {
            if self.coreAnimationView.frame.origin.x == self.originCoordinate {
                self.coreAnimationView.frame.origin.x -= 40
            }
        }
    }
    
    @IBAction func springAnimationButtonPressed(_ sender: SpringButton) {
        springAnimationView.animation = "fadeIn"
        springAnimationView.curve = "easeIn"
        springAnimationView.duration = 1
        springAnimationView.animate()
        
        sender.animation = "shake"
        sender.animate()
    }
    
    
}
