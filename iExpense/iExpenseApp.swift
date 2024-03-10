//
//  iExpenseApp.swift
//  iExpense
//
//  Created by charlene hoareau on 22/01/2024.
//

import SwiftUI

@main
struct iExpenseApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: ExpenseItem.self)
    }
}
