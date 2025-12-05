//
//  ViewController.swift
//  Assignment
//
//  Created by Vemulavada Swamy on 04/12/25.
//

import UIKit
import SwiftUI
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        let swiftUIView = ExpensesListView()
            .environmentObject(ThemeManager.shared)
         let hostViewController = UIHostingController(rootView: swiftUIView)
         self.navigationController?.pushViewController(hostViewController, animated: true)
    }
}

