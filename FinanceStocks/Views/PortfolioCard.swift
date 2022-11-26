//
//  PortfolioCard.swift
//  FinanceStocks
//
//  Created by Amaechi Chukwu on 25/11/2022.
//

import SwiftUI

struct PortfolioCard: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Portfolio Value")
                .foregroundColor(Color.gray)
                .font(.title2)
            
            HStack(alignment: .top) {
                Text("$1223.30")
                    .bold()
                    .foregroundColor(Color.white)
                    .font(.system(size: 50))
                
                Text("2.1%")
                    .foregroundColor(Color.lightGreen)
                    .bold()
                    .font(.title3)
            }
            
            Spacer()
            
            HStack {
                Button {
                    
                } label: {
                    Text("Deposit")
                        .foregroundColor(.white)
                        .bold()
                        .padding()
                        .padding(.horizontal)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.lightGreen)
                        )
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("Withdrawal")
                        .foregroundColor(.white)
                        .bold()
                        .padding()
                        .padding(.horizontal)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray)
                        )
                }
            }
        }
        .padding()
        .frame(height: UIScreen.main.bounds.height / 4)
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.darkBlue)
            
        )
    }
}

struct PortfolioCard_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioCard()
    }
}
