//
//  AddWalletView.swift
//  Amalia_CyberQuoteTest
//
//  Created by Amalia . on 15/09/23.
//

import SwiftUI

struct AddWalletView: View {
    
    @StateObject var wallet = WalletViewModel.shared
    @State var newWallet = WalletModel(title: "", balance: 0.0, number: "", expiredDate: "24/12", CVV: "CVV")
    @State var isSelectedBlue: Bool = true
    @State var isSelectedPurple: Bool = false
    @State var isSelectedGreen: Bool = false
    @State var isSelectedPink: Bool = false
    @State var session: String? = nil
    
    var body: some View {
        VStack(spacing: 33){
            HStack(spacing: 70) {
                Image("backArrow")
                Text("Add Wallet")
                    .font(
                        Font.custom("Poppins", size: 24)
                            .weight(.semibold)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
            }
            .padding(.trailing, 80)
            if isSelectedBlue {
                WalletCardBlue(titleWallet: newWallet.title, valueWallet: newWallet.balance, numberWallet: newWallet.number)
            } else if isSelectedPink {
                WalletCardPink(titleWallet: newWallet.title, valueWallet: newWallet.balance, numberWallet: newWallet.number)
            } else if isSelectedGreen {
                WalletCardGreen(titleWallet: newWallet.title, valueWallet: newWallet.balance, numberWallet: newWallet.number)
            } else if isSelectedPurple {
                WalletCardPurple(titleWallet: newWallet.title, valueWallet: newWallet.balance, numberWallet: newWallet.number)
            }
            HStack(spacing: 50) {
                Text("Change skin")
                    .font(Font.custom("Poppins", size: 14))
                    .foregroundColor(Color(red: 0.42, green: 0.42, blue: 0.42))
                HStack {
                    ZStack{
                        Rectangle()
                            .fill(.linearGradient(colors: [Color("colorBlue2"), Color("colorBlue1")], startPoint: UnitPoint(x: 0.96, y: 0), endPoint: UnitPoint(x: 0.06, y: 1.07)))
                            .frame(width: 41, height: 27)
                            .shadow(color: .black.opacity(0.25), radius: 12, x: 0, y: 4)
                            .cornerRadius(5)
                        Image("checkList")
                            .opacity(isSelectedBlue ? 1 : 0)
                    }
                    .onTapGesture {
                        isSelectedBlue = true
                        isSelectedPurple = false
                        isSelectedPink = false
                        isSelectedGreen = false
                    }
                    ZStack{
                        Rectangle()
                            .fill(.linearGradient(colors: [Color("colorGreen2"), Color("colorGreen1")], startPoint: UnitPoint(x: 0.96, y: 0), endPoint: UnitPoint(x: 0.06, y: 1.07)))
                            .frame(width: 41, height: 27)
                            .shadow(color: .black.opacity(0.25), radius: 12, x: 0, y: 4)
                            .cornerRadius(5)
                        Image("checkList")
                            .opacity(isSelectedGreen ? 1 : 0)
                    }
                    .onTapGesture {
                        isSelectedBlue = false
                        isSelectedPurple = false
                        isSelectedPink = false
                        isSelectedGreen = true
                    }
                    ZStack{
                        Rectangle()
                            .fill(.linearGradient(colors: [Color("colorOrange2"), Color("colorOrange1")], startPoint: UnitPoint(x: 0.96, y: 0), endPoint: UnitPoint(x: 0.06, y: 1.07)))
                            .frame(width: 41, height: 27)
                            .shadow(color: .black.opacity(0.25), radius: 12, x: 0, y: 4)
                            .cornerRadius(5)
                        Image("checkList")
                            .opacity(isSelectedPink ? 1 : 0)
                    }
                    .onTapGesture {
                        isSelectedBlue = false
                        isSelectedPurple = false
                        isSelectedPink = true
                        isSelectedGreen = false
                    }
                    ZStack{
                        Rectangle()
                            .fill(.linearGradient(colors: [Color("colorPurple2"), Color("colorPurple1")], startPoint: UnitPoint(x: 0.96, y: 0), endPoint: UnitPoint(x: 0.06, y: 1.07)))
                            .frame(width: 41, height: 27)
                            .shadow(color: .black.opacity(0.25), radius: 12, x: 0, y: 4)
                            .cornerRadius(5)
                        Image("checkList")
                            .opacity(isSelectedPurple ? 1 : 0)
                    }
                    .onTapGesture {
                        isSelectedBlue = false
                        isSelectedPurple = true
                        isSelectedPink = false
                        isSelectedGreen = false
                    }
                    
                }
            }
            ZStack{
                TextField("Input Card Name", text: $newWallet.title)
                    .disableAutocorrection(true)
                    .frame(width: 300, height: 45)
                    .cornerRadius(2)
                    .overlay(
                        RoundedRectangle(cornerRadius: 2)
                            .inset(by: -10)
                            .stroke(Color(red: 0.21, green: 0.19, blue: 0.38), lineWidth: 1)
                    )
                Rectangle()
                    .frame(width: 120, height: 20)
                    .position(x: 110, y: 5)
                    .foregroundColor(.white)
                Text("Card Name")
                    .font(Font.custom("Poppins", size: 14))
                    .position(x: 105, y: 5)
                    .foregroundColor(Color(red: 0.21, green: 0.19, blue: 0.38))
            }
            ZStack{
                TextField("Input Card Number", text: $newWallet.number, onEditingChanged: { (isEditing) in
                    // When editing begins, remove formatting
                    if !isEditing {
                        self.formatInput()
                    }
                    
                }, onCommit: {
                    // When the user presses return or taps outside the text field, format the input
                    self.formatInput()
                }
                )
                .disableAutocorrection(true)
                .frame(width: 300, height: 45)
                .cornerRadius(2)
                .overlay(
                    RoundedRectangle(cornerRadius: 2)
                        .inset(by: -10)
                        .stroke(Color(red: 0.21, green: 0.19, blue: 0.38), lineWidth: 1)
                )
                Rectangle()
                    .frame(width: 120, height: 20)
                    .position(x: 110, y: 5)
                    .foregroundColor(.white)
                Text("Card Number")
                    .font(Font.custom("Poppins", size: 14))
                    .position(x: 105, y: 5)
                    .foregroundColor(Color(red: 0.21, green: 0.19, blue: 0.38))
                Image("iconCircleColor")
                    .position(x: 320, y: 38)
            }
            HStack(spacing: -40) {
                ZStack{
                    TextField("Input Date",text: $newWallet.expiredDate)
                        .disableAutocorrection(true)
                        .frame(width: 130, height: 35)
                        .cornerRadius(2)
                        .overlay(
                            RoundedRectangle(cornerRadius: 2)
                                .inset(by: -10)
                                .stroke(Color(red: 0.21, green: 0.19, blue: 0.38), lineWidth: 1)
                        )
                    Rectangle()
                        .frame(width: 95, height: 20)
                        .position(x: 140, y: 5)
                        .foregroundColor(.white)
                    Text("Expire Date")
                        .font(Font.custom("Poppins", size: 14))
                        .position(x: 138, y: 8)
                        .foregroundColor(Color(red: 0.21, green: 0.19, blue: 0.38))
                }
                ZStack{
                TextField("Input CVV",text: $newWallet.CVV)
                    .disableAutocorrection(true)
                    .frame(width: 130, height: 35)
                    .cornerRadius(2)
                    .overlay(
                        RoundedRectangle(cornerRadius: 2)
                            .inset(by: -10)
                            .stroke(Color(red: 0.21, green: 0.19, blue: 0.38), lineWidth: 1)
                            .opacity(0.5)
                    )
            }
            }
            .position(x: 155, y: 30)
            NavigationLink(destination: WalletListView(), tag: "add", selection: $session) {
                Button {
                    session = "add"
                    wallet.addNewWallet(newWallet)
                } label: {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 319, height: 60)
                            .background(Color(red: 0.21, green: 0.19, blue: 0.38))
                            .cornerRadius(8)
                        Text("SAVE")
                            .font(
                                Font.custom("Poppins", size: 18)
                                    .weight(.bold)
                            )
                            .foregroundColor(.white)
                    }
                    .padding(.bottom, 50)
                }
            }
            
        }
    }
    
    //MARK: -Format Text Input
    private func formatInput() {
        var numberString = String(newWallet.number)
        if numberString.count >= 9 {
            // Use string manipulation to format the input
            let formattedText = "\(numberString.prefix(3)) - \(numberString.dropFirst(3).prefix(3)) - \(numberString.suffix(3))"
            numberString = formattedText
        }
    }
}

struct AddWalletView_Previews: PreviewProvider {
    static var previews: some View {
        AddWalletView()
    }
}
