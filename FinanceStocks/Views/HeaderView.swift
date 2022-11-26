//
//  HeaderView.swift
//  FinanceStocks
//
//  Created by Amaechi Chukwu on 25/11/2022.
//

import SwiftUI

struct HeaderView: View {
    @Binding var showSheet: Bool
    
    var body: some View {
        HStack {
            Text("My Stocks")
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color.darkBlue)
            
            Spacer()
            
            Button {
                showSheet.toggle()
            } label: {
                Image(systemName: "magnifyingglass.circle.fill")
                    .accentColor(Color.darkBlue)
                    .font(.system(size: 40))
                
            }

        }
    }
}

//struct HeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        HeaderView()
//            .padding()
//    }
//}
