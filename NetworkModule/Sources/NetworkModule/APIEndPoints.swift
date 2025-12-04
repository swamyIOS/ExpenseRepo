//
//  APIEndPoints.swift
//  NetworkModule
//
//  Created by Vemulavada Swamy on 04/12/25.
//


public enum EndPoints {
    public  enum Expenses {
        public static let getExpenses = "/b/DYZJF"
    }
}
public enum BaseURL {
    enum Expenses {
        public static let  expenseBase = "https://www.jsonkeeper.com"
    }
}

public extension EndPoints.Expenses {
    static var fullGetExpensesURL: String {
        BaseURL.Expenses.expenseBase + getExpenses
    }
}

public protocol ExpensesEndPoint {
    var apiUrl:String {get}
    var method:String {get}
}


public class FetchExpenses : ExpensesEndPoint {
   
    public init() {}
    public  var apiUrl :String {
        EndPoints.Expenses.fullGetExpensesURL
    }
    public  var method:String {
        "GET"
    }
}
