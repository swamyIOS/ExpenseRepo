//
//  ExpensesListView.swift
//  Assignment
//
//  Created by Vemulavada Swamy on 04/12/25.
//


import SwiftUI
import Domain
import CommonModule
struct ExpensesListView:View {
    @StateObject var  viewModel =  ExpensesViewModel(useCase: APPDIContainer().getExpensesUseCase())
    @EnvironmentObject var themeManager : ThemeManager
    var body: some View {
        VStack(spacing: 20) {
            
            if viewModel.isLoading {
                CustomProgressView(loadingText: ScreenConstants.Expenses.progressLoaderText.rawValue, progressColor: Assets.Color.progressColor)
            } else {
                CustomLabel(title: ScreenConstants.Expenses.screenTitle.rawValue, textColor: Assets.Color.textColor, font: Font.customFont(name: FontFamily.Poppins.bold.rawValue, size: 20))
                ScrollView {
                    LazyVStack(spacing: 16) {
                        ForEach(viewModel.list) { item  in
                            ExpenseRow(item: item)
                        }
                    }
                    .padding(.top, 16)
                }
            }
            
        }
        .preferredColorScheme(themeManager.apperance)
        .onAppear {
            viewModel.fetchExpenseData()
        }
    }
}



