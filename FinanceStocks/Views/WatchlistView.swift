//
//  WatchlistView.swift
//  FinanceStocks
//
//  Created by Amaechi Chukwu on 26/11/2022.
//

import SwiftUI

struct WatchlistView: View {
    @StateObject var stocksVM: StocksViewModel
    
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
                    ForEach(stocksVM.stocks, id: \.self) { stock in
                        StockCard(stockModel: stock)
                    }
                }
            }
            .padding(3)
        }
    }
}

