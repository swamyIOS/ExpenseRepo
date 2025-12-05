//
//  ImageResource.swift
//  CommonModule
//
//  Created by Vemulavada Swamy on 05/12/25.
//


import SwiftUI
public enum Assets {
    public   enum Color:String {
       case progressColor
        case textColor
        case priceColor
        case cardBackgroundColor
    }
}

public extension Color {
    init(_ asset:Assets.Color) {
        self.init(asset.rawValue, bundle: .main)
    }
}
