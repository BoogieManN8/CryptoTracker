//
//  StatisticModel.swift
//  SwiftfulCrypto
//
//  Created by boogieman8 on 04.05.22.
//

import Foundation


class StatisticModel: Identifiable {
    
    let id = UUID().uuidString
    let title: String
    let value: String
    let percentageChange: Double?

    init(title: String, value: String, percentageChange: Double? = nil ){
        self.title = title
        self.value = value
        self.percentageChange = percentageChange
    }

}


