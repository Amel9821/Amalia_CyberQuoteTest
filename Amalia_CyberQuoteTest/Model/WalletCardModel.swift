//
//  WalletCardModel.swift
//  Amalia_CyberQuoteTest
//
//  Created by Amalia . on 10/09/23.
//

import Foundation

struct WalletModel: Identifiable {
    var id = UUID()
    var title: String
    var balance: Double
    var number: String
    var expiredDate: String
    var CVV: String
}
