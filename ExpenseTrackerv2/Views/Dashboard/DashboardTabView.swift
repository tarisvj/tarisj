//
//  DashboardTabView.swift
//  ExpenseTrackerSwiftUI
//
//  Created by Taris Jackson on 5/1/24.
//

import SwiftUI
import CoreData

struct DashboardTabView: View {
    
    // define some variables
    @Environment(\.managedObjectContext)
    var context: NSManagedObjectContext
    @State var totalExpenses: Double?
    @State var categoriesSum: [CategorySum]?
    
    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 4) {
                if totalExpenses != nil {
                    Text("Total Expenses")
                        .font(.headline)
                    if totalExpenses != nil {
                        Text(totalExpenses!.formattedCurrencyText)
                            .font(.largeTitle)
                    }
                }
            }
            
            if categoriesSum != nil {
                if totalExpenses != nil && totalExpenses! > 0 {
                    PieChartView(
                        data: categoriesSum!.map { ($0.sum, $0.category.color) },
                        style: Styles.pieChartStyleOne,
                        form: CGSize(width: 250, height: 220),
                        dropShadow: true
                    )
                }
                Divider()
                List {
                    Text("Expense List").font(.headline)
                    ForEach(self.categoriesSum!) {
                        CategoryRowView(category: $0.category, sum: $0.sum)
                    }
                }
            }
            if totalExpenses == nil && categoriesSum == nil {
                Text("No expenses data\nPlease add your expenses from the logs tab")
                    .multilineTextAlignment(.center)
                    .font(.headline)
                    .padding(.horizontal)
            }
        }
        .padding(.top)
        .onAppear(perform: fetchTotalSums)
    }
    
    func fetchTotalSums() {
        ExpenseLog.fetchAllCategoriesTotalAmountSum(context: self.context) { (results) in
            guard !results.isEmpty else { return }
            
            let totalSum = results.map { $0.sum }.reduce(0, +)
            self.totalExpenses = totalSum
            self.categoriesSum = results.map({ (result) -> CategorySum in
                return CategorySum(sum: result.sum, category: result.category)
            })
        }
    }
}

struct CategorySum: Identifiable, Equatable {
    let sum: Double
    let category: Category
    var id: String { "\(category)\(sum)" }
}

