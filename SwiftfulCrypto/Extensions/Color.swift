//
//  Color.swift
//  SwiftfulCrypto
//
//  Created by boogieman8 on 27.04.22.
//

import Foundation
import SwiftUI


extension Color {
    
    static let theme = ColorTheme()
    static let launch = LaunchScreen()
    
}


struct ColorTheme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
}

struct ColorTheme2 {
    
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
    
}

struct LaunchScreen {
    let accent = Color("LaunchAccentColor")
    let background = Color("LaunchBackgroundColor")
}
