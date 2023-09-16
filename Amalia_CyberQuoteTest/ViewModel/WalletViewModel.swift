//
//  WalletViewModel.swift
//  Amalia_CyberQuoteTest
//
//  Created by Amalia . on 12/09/23.
//

import SwiftUI

class WalletViewModel: ObservableObject {
    static let shared = WalletViewModel()
    
    @Published var walletList: [WalletModel] = [
        WalletModel(
            title: "Main Wallet",
            balance: 45500.12,
            number: "444 221 224 ***",
            expiredDate: "",
            CVV: ""
        ),
        WalletModel(
            title: "XYZ Wallet",
            balance: 250.5,
            number: "444 221 224 ***",
            expiredDate: "",
            CVV: ""
        ),
        WalletModel(
            title: "ABC Wallet",
            balance: 4550.67,
            number: "444 221 224 ***",
            expiredDate: "",
            CVV: ""
        )
    ]
    
    func addNewWallet(_ newWallet: WalletModel) {
        walletList.append(newWallet)
    }
    
    
}


