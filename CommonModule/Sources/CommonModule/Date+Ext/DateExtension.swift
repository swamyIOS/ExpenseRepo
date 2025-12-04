//
//  DateExtension.swift
//  CommonModule
//
//  Created by Vemulavada Swamy on 04/12/25.
//

import Foundation


public  let SimpleDateFormat = "yyyy-MM-dd"

public extension Date {
    func SimpleDateString()->String {
        let formatter = getFormatter(SimpleDateFormat)
        return formatter.string(from: self)
    }
    
    func getFormatter(_ formatter: String) -> DateFormatter {
      let dateFormatter = DateFormatter()
      dateFormatter.dateFormat = formatter
      dateFormatter.timeZone = .current
      return dateFormatter
  }
}
