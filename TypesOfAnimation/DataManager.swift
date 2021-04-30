//
//  DataManager.swift
//  TypesOfAnimation
//
//  Created by MacBook on 27.04.2021.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animations = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases

    private init() {}
}
