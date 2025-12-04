//
//  String+Ext.swift
//  CommonModule
//
//  Created by Vemulavada Swamy on 04/12/25.
//

import Foundation
public extension String {
    func toDateFormat(_ output: String) -> String {
        let inFormatter = ISO8601DateFormatter()
        inFormatter.formatOptions = [.withInternetDateTime]

        guard let date = inFormatter.date(from: self) else { return Date().SimpleDateString() }

        let outFormatter = DateFormatter()
        outFormatter.dateFormat = output
        outFormatter.locale = Locale(identifier: "en_US_POSIX")
        return outFormatter.string(from: date) 
    }
}
