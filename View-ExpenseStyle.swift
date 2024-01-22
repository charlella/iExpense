//
//  View-ExpenseStyle.swift
//  iExpense
//
//  Created by charlene hoareau on 22/01/2024.
//

import SwiftUI

extension View {
    func style(for item: ExpenseItem) -> some View {
        if item.amount < 10 {
            return self .font(.body)
        } else if item.amount < 100 {
            return self .font(.title3)
        } else {
            return self .font(.title)
        }
    }
}
