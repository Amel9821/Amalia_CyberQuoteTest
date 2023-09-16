//
//  TransactionViewModel.swift
//  Amalia_CyberQuoteTest
//
//  Created by Amalia . on 15/09/23.
//

import Foundation

class TransactionViewModel: ObservableObject {
    static let shared = TransactionViewModel()
    
    @Published var transactionList: [Transaction] = [
        Transaction(image: "greenBank", background: "", title: "Green Bank", activity: "Withdraw", value: "$800", day: "4d ago", colorValue: "#363062", spacing: 100),
        Transaction(image: "legendaryBank", background: "", title: "Legendary Bank", activity: "Top Up", value: "-$1,000", day: "1w ago", colorValue: "#363062", spacing: 50),
        Transaction(image: "bitKoin", background: "placeholder", title: "Bit Koin", activity: "SELL", value: "-$540", day: "1w ago", colorValue: "#363062", spacing: 135),
        Transaction(image: "kayaBank", background: "", title: "Kaya Bank", activity: "Top Up", value: "$850", day: "4d ago", colorValue: "#61C277", spacing: 100),
        Transaction(image: "photoGirl", background: "", title: "Olivia Johanson", activity: "Transfer", value: "$432.9", day: "3.30 AM", colorValue: "#61C277", spacing: 55),
        Transaction(image: "purpleBank", background: "", title: "Purple Bank", activity: "Withdraw", value: "$800", day: "4d ago", colorValue: "#363062", spacing: 90),
        Transaction(image: "legendaryBank", background: "", title: "Legendary Bank", activity: "Top Up", value: "$1,000", day: "4d ago", colorValue: "#363062", spacing: 50)
        
    ]
}
