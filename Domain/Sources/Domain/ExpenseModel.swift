//
//  ExpenseModel.swift
//  Domain
//
//  Created by Vemulavada Swamy on 04/12/25.
//
import Foundation
public struct ExpenseModel:Identifiable {
    public let id: String
    public let title: String
    public let amount: Double
    public let date: String
}
extension ExpenseModel {
    var dateValue: Date? {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withInternetDateTime]
        return formatter.date(from: date)
    }
}
