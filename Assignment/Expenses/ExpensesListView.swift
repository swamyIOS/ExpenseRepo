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
   
    var body: some View {
        VStack(spacing: 20) {
            
            if viewModel.isLoading {
                ProgressView("Expenses Loading...")
                    .progressViewStyle(CircularProgressViewStyle())
                    .scaleEffect(1.5)
                    .padding()
            } else {
                Text("Expense View")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                List(viewModel.list) { item in
                    ExpenseRow(item: item)
                }
            }
            
        }
        .onAppear {
            viewModel.fetchExpenseData()
        }
    }
}


struct ExpenseRow:View {
    var item:ExpenseModel
    var body: some View {
        VStack(spacing: 15) {
            HStack {
                Text(item.title)
                Spacer()
                Text("₹\(item.amount.clean)")
                    .foregroundColor(.red)
            }
            Text(item.date.toDateFormat("dd MMMM yyyy"))
                .frame(maxWidth: .infinity,alignment: .leading)
          
        }.padding(20)
           
    }
}
