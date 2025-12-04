//
//  Double.swift
//  CommonModule
//
//  Created by Vemulavada Swamy on 05/12/25.
//

public extension Double {
    var clean: String {
        self.truncatingRemainder(dividingBy: 1) == 0
        ? String(format: "%.0f", self)  // no decimals
        : String(self)                  // keep decimals
    }
}
