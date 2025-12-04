//
//  ExpenseRepositoryProtocol.swift
//  Domain
//
//  Created by Vemulavada Swamy on 04/12/25.
//

import NetworkModule
public protocol ExpenseRepositoryProtocol {
    func fetchExpenses(input:ExpensesEndPoint) async throws -> [ExpenseModel]
}

public class ExpenseRepository: ExpenseRepositoryProtocol {
    private var service:ExpenseAPIDataSourceProtocol
    public init(service: ExpenseAPIDataSourceProtocol) {
        self.service = service
    }
    public func fetchExpenses(input:ExpensesEndPoint) async throws -> [ExpenseModel] {
        let dataObject:[ExpenseDTO] = try await service.fetchExpenses(input: input)
        return dataObject.map { $0.toDomain() }
    }
}
