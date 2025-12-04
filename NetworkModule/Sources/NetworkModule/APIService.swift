//
//  APIService.swift
//  NetworkModule
//
//  Created by Vemulavada Swamy on 04/12/25.
//

import Foundation
import ObjCNetworkClient


public protocol ExpenseAPIDataSourceProtocol {
    func fetchExpenses<T:Codable>(input:ExpensesEndPoint) async throws -> [T]
}


public final class ExpenseAPIDataSource: ExpenseAPIDataSourceProtocol {
    
    private let fetcher: ObjCNetworkClientProtocol
    
    public init(fetcher: ObjCNetworkClientProtocol) {
        self.fetcher = fetcher
    }
    
    public func  fetchExpenses<T:Codable>(input:ExpensesEndPoint) async throws -> [T] {
        guard  let url = URL(string: input.apiUrl) else {
            throw APIError.invalidUrl
        }
        
        return try await withCheckedThrowingContinuation { continuation in
            fetcher.getFrom(url) { data, error in
                if let error = error {
                    continuation.resume(throwing: error)
                    return
                }
                
                guard let data = data else {
                    continuation.resume(throwing: APIError.invalidResponse)
                    return
                }
                
                do {
                    let decoder = JSONDecoder()
                    decoder.dateDecodingStrategy = .iso8601
                    let result = try decoder.decode([T].self, from: data)
                    continuation.resume(returning: result)
                } catch {
                    continuation.resume(throwing: error)
                }
            }
        }
    }
}
