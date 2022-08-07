//
//  UIApplication.swift
//  SwiftfulCrypto
//
//  Created by boogieman8 on 01.05.22.
//

import Foundation
import SwiftUI


extension UIApplication {
    
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
    
}
