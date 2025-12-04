//
//  ExpensesViewModel.swift
//  Assignment
//
//  Created by Vemulavada Swamy on 04/12/25.
//


import Combine
import Domain
import NetworkModule
@MainActor
class ExpensesViewModel : ObservableObject {
    @Published var list = [ExpenseModel]()
    private let useCase : FetchExpensesUseCaseProtocol
    @Published var isLoading = false
    init(useCase: FetchExpensesUseCaseProtocol) {
        self.useCase = useCase
    }
    
    
    public func fetchExpenseData()  {
        Task {
            isLoading = true
            defer { isLoading = false }
            do {
              let results =  try await self.useCase.fetchExpenses(input: FetchExpenses())
                self.list = results
                debugPrint("list \(results)")
            } catch {
                debugPrint("error \(error.localizedDescription)")
            }
        }
    }
}
