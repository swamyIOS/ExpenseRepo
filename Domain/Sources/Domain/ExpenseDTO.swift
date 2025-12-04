//
//  ExpenseDTO.swift
//  Domain
//
//  Created by Vemulavada Swamy on 04/12/25.
//


public struct ExpenseDTO: Codable {
    public   let id: String
    public  let title: String
    public  let amount: Double
    public let date: String
}

extension ExpenseDTO {
    public func toDomain() -> ExpenseModel {
        ExpenseModel(id: id, title: title, amount: amount, date: date)
    }
}
