//
//  ExpenseDTO.swift
//  Domain
//
//  Created by Vemulavada Swamy on 04/12/25.
//


struct ExpenseDTO: Decodable {
    let id: String
    let title: String
    let amount: Double
    let date: Date
}

extension ExpenseDTO {
    func toDomain() -> ExpenseModel {
        ExpenseModel(id: id, title: title, amount: amount, date: date)
    }
}