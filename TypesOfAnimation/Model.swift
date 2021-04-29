//
//  Model.swift
//  TypesOfAnimation
//
//  Created by MacBook on 27.04.2021.
//

import Foundation

struct Animation {
    let present: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
}

extension Animation {
    static func getAnimations() -> [Animation] {
        
        var animations:[Animation] = []
        
        let iterationCount = DataManager.shared.animations.count
        
        for index in 0..<iterationCount{
            let animation = Animation(
                present: DataManager.shared.animations[index],
                curve: DataManager.shared.curve.randomElement() ?? "",
                force: Float.random(in: 1.0...1.8),
                duration: Float.random(in: 0.5...1.3),
                delay: Float.random(in: 0...0.5)
            )
            
            animations.append(animation)
        }
        
        return animations
    }
}

