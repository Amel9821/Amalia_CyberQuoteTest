//
//  WalletCardPink.swift
//  Amalia_CyberQuoteTest
//
//  Created by Amalia . on 14/09/23.
//

import SwiftUI

struct WalletCardPink: View {
    let titleWallet: String
    let valueWallet: Double
    let numberWallet: String
    
    var body: some View {        
        ZStack{
            Rectangle()
                .fill(.linearGradient(colors: [Color("colorPink2"), Color("colorPink1")], startPoint: UnitPoint(x: 0.96, y: 0), endPoint: UnitPoint(x: 0.06, y: 1.07)))
                .frame(width: 319, height: 170)
                .shadow(color: .black.opacity(0.25), radius: 12, x: 0, y: 4)
                .cornerRadius(10)
            HStack(spacing: 95) {
                VStack(alignment: .leading, spacing: 8) {
                    Text(titleWallet)
                        .font(Font.custom("Poppins", size: 14))
                        .foregroundColor(.white.opacity(0.6))
                    Text("$\(valueWallet, specifier: "%.2f")")
                        .font(
                            Font.custom("Poppins", size: 28)
                                .weight(.semibold)
                        )
                        .foregroundColor(.white)
                        .padding(.bottom)
                    Text(numberWallet)
                        .font(
                            Font.custom("Poppins", size: 14)
                                .weight(.semibold)
                        )
                        .kerning(2.8)
                        .foregroundColor(Color(red: 1, green: 0.94, blue: 0.38))
                }
                Image("iconThunder")
                    .padding(.top)
                    .padding(.top)
                    .padding(.top)
                    .padding(.top)
            }
            //kurang garis2
        }
    }
}

struct WalletCardPink_Previews: PreviewProvider {
    static var previews: some View {
        WalletCardPink(titleWallet: "ABC Wallet", valueWallet: 4550.67, numberWallet: "444 221 224 ***")
    }
}
