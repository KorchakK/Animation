//
//  ViewController.swift
//  Animation
//
//  Created by Konstantin Korchak on 05.04.2022.
//

import Spring

class MainViewController: UIViewController {
    @IBOutlet var springView: SpringView!
    @IBOutlet var currentSettingsOfAnimation: UILabel!
    
    private let currentAnimation = AnimationModel.getRandomAnimation()
    private var nextAnimation = AnimationModel.getRandomAnimation()
    
    override func viewDidLoad() {
        startAnimation(for: currentAnimation)
        changeLabel(for: currentAnimation)
    }
    
    @IBAction func runButtonPressed(_ sender: UIButton) {
        changeLabel(for: nextAnimation)
        startAnimation(for: nextAnimation)
        nextAnimation = AnimationModel.getRandomAnimation()
        sender.setTitle(nextAnimation.preset, for: .normal)
    }
    
    private func startAnimation(for animation: AnimationModel) {
        springView.animation = animation.preset
        springView.curve = animation.curve
        springView.force = animation.force
        springView.duration = animation.duration
        springView.delay = animation.delay
        springView.animate()
    }
    
    private func changeLabel(for animation: AnimationModel) {
        currentSettingsOfAnimation.text = """
        preset: \(animation.preset)
        curve: \(animation.curve)
        force: \(String(format: "%.2f", animation.force))
        duration: \(String(format: "%.2f", animation.duration))
        delay: \(String(format: "%.2f", animation.delay))
        """
    }
    
    
}
