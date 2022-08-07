//
//  HapticManager.swift
//  SwiftfulCrypto
//
//  Created by boogieman8 on 05.05.22.
//

import Foundation
import SwiftUI

class HapticManager{
    static let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType){
        generator.notificationOccurred(type)
    }
}
