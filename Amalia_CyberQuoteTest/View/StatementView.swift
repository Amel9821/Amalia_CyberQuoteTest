//
//  StatementView.swift
//  Amalia_CyberQuoteTest
//
//  Created by Amalia . on 15/09/23.
//

import SwiftUI

struct StatementView: View {
    var body: some View {
        ZStack{
            VStack (spacing: 40){
                HStack(spacing: 80) {
                    Image("backArrowWhite")
                    Text("Statement")
                        .font(
                            Font.custom("Poppins", size: 24)
                                .weight(.semibold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                    Image("iconOption")
                }
                HStack(spacing: 130){
                    HStack(spacing: 23){
                        Image("calendarLogo")
                        VStack(alignment: .leading){
                            Text("2020")
                                .font(Font.custom("Poppins", size: 14))
                                .foregroundColor(.white)
                            Text("August")
                                .font(
                                    Font.custom("Poppins", size: 24)
                                        .weight(.bold)
                                )
                                .foregroundColor(.white)
                        }
                    }
                    Image("arrow")
                }
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 375, height: 582)
                  .background(.white)
                  .cornerRadius(30)
            }
            .padding(.top, 75)
            
        }
        .ignoresSafeArea(edges: .top)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            .linearGradient(colors: [Color.init(hex: "#363062"), Color.init(hex: "#7870B0")], startPoint: UnitPoint(x: 0.04, y: 1.03),
                            endPoint: UnitPoint(x: 1.11, y: -0.07)))
        
    }
}

struct StatementView_Previews: PreviewProvider {
    static var previews: some View {
        StatementView()
    }
}
