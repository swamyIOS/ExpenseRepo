//
//  ExpenseRow.swift
//  Assignment
//
//  Created by Vemulavada Swamy on 05/12/25.
//

import SwiftUI
import Domain
import CommonModule
struct ExpenseRow:View {
    var item:ExpenseModel
    @EnvironmentObject var themeManager : ThemeManager
    var body: some View {
        VStack(spacing: 15) {
            HStack {
                CustomLabel(title: item.title, textColor: Assets.Color.textColor, font: Font.customFont(name: FontFamily.Poppins.medium.rawValue, size: 16))
                Spacer()
                CustomLabel(title: "₹\(item.amount.clean)", textColor: Assets.Color.priceColor, font: Font.customFont(name: FontFamily.Poppins.medium.rawValue, size: 16))
                    
            }
            
            CustomLabel(title: item.date.toDateFormat("dd MMMM yyyy"), textColor: Assets.Color.textColor, font: Font.customFont(name: FontFamily.Poppins.medium.rawValue, size: 16))                .frame(maxWidth: .infinity,alignment: .leading)
          
        }
        .padding(20)
        .background(
                    RoundedRectangle(cornerRadius: 14)
                        .fill(Color(Assets.Color.cardBackgroundColor))
                        .shadow(
                            color: Color(Assets.Color.textColor).opacity(0.08),
                            radius: 8,
                            x: -4,
                            y: 4
                        )
                )
        .onTapGesture {
            debugPrint("On Change")
            if ThemeManager.shared.apperance == .dark {
                ThemeManager.shared.apperance = .light
            } else {
                ThemeManager.shared.apperance = .dark
            }
        }
        .preferredColorScheme(themeManager.apperance)
    }
}
