//
//  AnimationViewController.swift
//  AnimationApp
//
//  Created by Егор Скрутелев on 27.02.2021.
//

import UIKit

class AnimationViewController: UIViewController {
    
    @IBOutlet var coreAnimationView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func coreAnimationButtonPressed(_ sender: UIButton) {
        sender.pulsate()
    }
}
