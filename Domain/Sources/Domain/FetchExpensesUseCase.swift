//
//  FetchExpensesUseCase.swift
//  Domain
//
//  Created by Vemulavada Swamy on 04/12/25.
//

import NetworkModule
public protocol FetchExpensesUseCaseProtocol {
    func fetchExpenses(input:ExpensesEndPoint) async throws -> [ExpenseModel]
}

public class FetchExpensesUseCase : FetchExpensesUseCaseProtocol {
    
    
   private  let repository:ExpenseRepositoryProtocol
    public init(repository: ExpenseRepositoryProtocol) {
        self.repository = repository
    }
    public func fetchExpenses(input:ExpensesEndPoint) async throws -> [ExpenseModel] {
        let sortedList =  try await repository.fetchExpenses(input: input).sorted { $0.dateValue ?? .distantPast < $1.dateValue ?? .distantPast
        }
        return sortedList
    }
}
