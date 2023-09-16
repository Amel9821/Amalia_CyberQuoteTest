//
//  TransactionCard.swift
//  Amalia_CyberQuoteTest
//
//  Created by Amalia . on 14/09/23.
//

import SwiftUI

struct TransactionCard: View {
    
    let image: String
    let title: String
    let activity: String
    let value: String
    let day: String
    let colorValue: String
    let spacing: Double
    let background: String
    
    var body: some View {
        ZStack {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 347, height: 71)
              .background(Color(red: 0.95, green: 0.94, blue: 0.98))
              .cornerRadius(12)
            HStack(spacing: spacing){
                HStack(spacing: 22){
                    ZStack{
                        Image(background)
                        Image(image)
                    }
                    VStack(alignment: .leading, spacing: 8){
                        Text(title)
                            .font(
                                Font.custom("Poppins", size: 16)
                                    .weight(.medium)
                            )
                            .foregroundColor(.black)
                        Text(activity)
                            .font(Font.custom("Poppins", size: 14))
                            .foregroundColor(Color(red: 0.42, green: 0.42, blue: 0.42))
                    }
                }
                VStack(alignment: .trailing, spacing: 8){
                    Text(value)
                        .font(
                            Font.custom("Poppins", size: 16)
                                .weight(.bold)
                        )
                        .multilineTextAlignment(.trailing)
                        .foregroundColor(Color.init(hex: colorValue))
                    Text(day)
                        .font(Font.custom("Poppins", size: 14))
                        .multilineTextAlignment(.trailing)
                        .foregroundColor(Color(red: 0.42, green: 0.42, blue: 0.42))
                }
            }
        }
    }
}

struct TransactionCard_Previews: PreviewProvider {
    static var previews: some View {
        TransactionCard(image: "greenBank", title: "Green Bank", activity: "Withdraw", value: "$800", day: "4d ago", colorValue: "#363062", spacing: 100, background: "")
    }
}
