//
//  ExpenseSection.swift
//  iExpense
//
//  Created by charlene hoareau on 22/01/2024.
//

import SwiftUI

struct ExpenseSection: View {
    let title: String
    let expenses: [ExpenseItem]
    let deleteItem: (IndexSet) -> Void
    
    let localCurrency = "EUR"
   // let localCurrency = Locale.current.currency?.identifier ?? "USD"

    
    var body: some View {
        ForEach(expenses) { item in
            HStack {
                    VStack(alignment: .leading) {
                        Text(item.name)
                            .font(.headline)
                        Text(item.type)
                    }

                    Spacer()
                    Text(item.amount, format: .currency(code: localCurrency))
                    .style(for: item)
            }
        }
        .onDelete(perform: deleteItem)
    }
}

#Preview {
    ExpenseSection(title: "Personal", expenses: []) { _ in
        
    }
}
