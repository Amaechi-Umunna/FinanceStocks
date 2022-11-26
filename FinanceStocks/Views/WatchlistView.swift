//
//  WatchlistView.swift
//  FinanceStocks
//
//  Created by Amaechi Chukwu on 26/11/2022.
//

import SwiftUI

struct WatchlistView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Watchlist")
                    .font(.title)
                    .bold()
                    .foregroundColor(.darkBlue)
                Spacer()
            }
            ScrollView {
                
                VStack {
                    // stock cards
                    StockCard()
                    StockCard()
                    StockCard()
                }
            }
            .padding(3)
        }
    }
}

struct WatchlistView_Previews: PreviewProvider {
    static var previews: some View {
        WatchlistView()
    }
}
