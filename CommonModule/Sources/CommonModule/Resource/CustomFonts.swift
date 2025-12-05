//
//  CustomFonts.swift
//  CommonModule
//
//  Created by Vemulavada Swamy on 05/12/25.
//

import SwiftUI
public enum FontFamily {
    public enum Poppins:String {
        case regular = "Poppins-Regular"
        case medium = "Poppins-Medium"
        case bold = "Poppins-Bold"
    }
}

extension Font {
    public static func customFont(name:String,size:CGFloat) -> Font {
        return Font.custom(name, size: size)
    }
}
