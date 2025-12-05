//
//  ProgressView.swift
//  Assignment
//
//  Created by Vemulavada Swamy on 05/12/25.
//


import SwiftUI
import CommonModule
struct CustomProgressView:View {
    var loadingText:String
    var progressColor:Assets.Color
    var body: some View {
        ProgressView(loadingText)
            .progressViewStyle(CircularProgressViewStyle(tint:Color(progressColor)))
            .scaleEffect(1.5)
            .padding()
    }
}
