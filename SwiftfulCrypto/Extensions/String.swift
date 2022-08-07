//
//  String.swift
//  SwiftfulCrypto
//
//  Created by boogieman8 on 06.05.22.
//

import Foundation

extension String {
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
