//
//  ExpenseRepositoryProtocol.swift
//  Domain
//
//  Created by Vemulavada Swamy on 04/12/25.
//


public protocol ExpenseRepositoryProtocol {
    func getExpenses() async throws -> [ExpenseModel]
}