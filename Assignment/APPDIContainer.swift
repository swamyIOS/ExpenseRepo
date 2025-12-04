//
//  APPDIContainer.swift
//  Assignment
//
//  Created by Vemulavada Swamy on 04/12/25.
//


import Domain
import NetworkModule
import ObjCNetworkClient
class APPDIContainer {
    func getExpensesUseCase() -> FetchExpensesUseCaseProtocol {
        let objcClient = ObjCNetworkClient()
        let service = ExpenseAPIDataSource(fetcher: objcClient)
        let repository = ExpenseRepository(service: service)
        let usecase = FetchExpensesUseCase(repository: repository)
        return usecase
    }
}
