//
//  Model.swift
//  Animation
//
//  Created by Konstantin Korchak on 06.04.2022.
//

import Spring

struct AnimationModel {
    let preset: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    static func getRandomAnimation() -> AnimationModel {
        AnimationModel(
            preset: Spring.AnimationPreset.allCases.randomElement()?.rawValue ?? "",
            curve: Spring.AnimationCurve.allCases.randomElement()?.rawValue ?? "",
            force: CGFloat.random(in: 0.3...3),
            duration: CGFloat.random(in: 0.5...4),
            delay: CGFloat.random(in: 0.5...1.5)
        )
    }
}
