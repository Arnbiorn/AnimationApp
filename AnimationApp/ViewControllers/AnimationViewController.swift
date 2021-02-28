//
//  AnimationViewController.swift
//  AnimationApp
//
//  Created by Егор Скрутелев on 27.02.2021.
//

import UIKit

class AnimationViewController: UIViewController {
    
    @IBOutlet var coreAnimationView: UIView!
    
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
    
}
