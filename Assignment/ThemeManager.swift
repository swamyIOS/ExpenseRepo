//
//  ThemeManager.swift
//  Assignment
//
//  Created by Vemulavada Swamy on 05/12/25.
//


import Combine
import SwiftUI
class ThemeManager:ObservableObject {
    @Published var apperance:ColorScheme = .light {
        didSet {
            applyToUIKitWindow()
        }
    }
    static public var shared = ThemeManager()
    
    func applyToUIKitWindow() {
        let style:UIUserInterfaceStyle = (apperance == .dark) ? .dark : .light
        UIApplication.shared.connectedScenes
            .compactMap({$0 as? UIWindowScene})
            .flatMap({$0.windows})
            .forEach({$0.overrideUserInterfaceStyle = style})
    }
}
