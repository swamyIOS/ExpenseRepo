//
//  CustomLabel.swift
//  Assignment
//
//  Created by Vemulavada Swamy on 05/12/25.
//



import SwiftUI
import CommonModule
struct CustomLabel:View {
    var title:String
    var textColor:Assets.Color
    var font:Font
    var body: some View {
        Text(title)
            .foregroundColor(Color(textColor))
            .font(font)
            .padding()
    }
}
