//
//  WalletListView.swift
//  Amalia_CyberQuoteTest
//
//  Created by Amalia . on 14/09/23.
//

import SwiftUI

struct WalletListView: View {
    var body: some View {
        ZStack{
            VStack(alignment: .leading) {
                HStack(spacing: 153){
                    Text("Wallet")
                        .font(
                            Font.custom("Poppins", size: 24)
                                .weight(.semibold)
                        )
                        .foregroundColor(.black)
                    HStack(spacing: 23){
                        Image("bellDot")
                        Image("photoProfil")
                    }
                }
                ScrollView {
                    VStack(spacing: 24) {
                        WalletCardPurple(titleWallet: "Main Wallet", valueWallet: 45500.12, numberWallet: "444 221 224 ***")
                        WalletCardGreen(titleWallet: "XYZ Wallet", valueWallet: 250.5, numberWallet: "444 221 224 ***")
                        WalletCardPink(titleWallet: "ABC Wallet", valueWallet: 4550.67, numberWallet: "444 221 224 ***")
                        WalletCardBlue(titleWallet: "Emergency Wallet", valueWallet: 0.0, numberWallet: "444 221 224 ***")
                    }
                    .padding(.bottom, 100)
                }
            }
            .padding(.top, 50)
            Image("FLOATING BOTTOM MENUS")
                .padding(.top, 700)
        }
    }
}

struct WalletListView_Previews: PreviewProvider {
    static var previews: some View {
        WalletListView()
    }
}
