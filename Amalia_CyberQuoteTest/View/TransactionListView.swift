//
//  TransactionListView.swift
//  Amalia_CyberQuoteTest
//
//  Created by Amalia . on 15/09/23.
//

import SwiftUI

struct TransactionListView: View {
    
    @StateObject var transactionItem = TransactionViewModel.shared
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack(spacing: 60) {
                Image("backArrow")
                Text("Transactions")
                  .font(
                    Font.custom("Poppins", size: 24)
                      .weight(.semibold)
                  )
                  .multilineTextAlignment(.center)
                  .foregroundColor(.black)
                Image("filter")
            }
            .padding(.leading)
            ZStack {
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 319, height: 57)
                  .cornerRadius(8)
                  .overlay(
                    RoundedRectangle(cornerRadius: 8)
                      .inset(by: 0.5)
                      .stroke(Color(red: 0.89, green: 0.89, blue: 0.89), lineWidth: 1)
                  )
                HStack(spacing: 180){
                    Text("Search here")
                        .font(Font.custom("Poppins", size: 14))
                        .foregroundColor(Color(red: 0.42, green: 0.42, blue: 0.42))
                    Image("search")
                }
            }
            .padding(.leading)
            HStack(spacing: 35) {
                ZStack {
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 62, height: 34)
                      .background(Color(red: 0.21, green: 0.19, blue: 0.38).opacity(0.05))
                      .cornerRadius(20)
                    Text("All")
                      .font(
                        Font.custom("Poppins", size: 16)
                          .weight(.semibold)
                      )
                      .foregroundColor(Color(red: 0.21, green: 0.19, blue: 0.38))
                    
                }
                Text("Expense")
                  .font(
                    Font.custom("Poppins", size: 16)
                      .weight(.semibold)
                  )
                  .foregroundColor(Color(red: 0.74, green: 0.74, blue: 0.74))
                Text("Income")
                  .font(
                    Font.custom("Poppins", size: 16)
                      .weight(.semibold)
                  )
                  .foregroundColor(Color(red: 0.74, green: 0.74, blue: 0.74))
            }
            .padding(.leading)
            VStack(spacing: 14) {
                ScrollView {
                    ForEach(transactionItem.transactionList) {
                        transaction in
                        TransactionCard(image: transaction.image, title: transaction.title, activity: transaction.activity, value: transaction.value, day: transaction.day, colorValue: transaction.colorValue, spacing: transaction.spacing, background: transaction.background)
                    }
                }
            }
        }
    }
}

struct TransactionListView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionListView()
    }
}
