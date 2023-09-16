//
//  TransactionModel.swift
//  Amalia_CyberQuoteTest
//
//  Created by Amalia . on 15/09/23.
//

import Foundation

struct Transaction: Identifiable {
    var id = UUID()
    let image: String
    let background: String
    let title: String
    let activity: String
    let value: String
    let day: String
    let colorValue: String
    let spacing: Double
}

