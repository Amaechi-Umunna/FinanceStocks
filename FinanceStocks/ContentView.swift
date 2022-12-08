//
//  ContentView.swift
//  FinanceStocks
//
//  Created by Amaechi Chukwu on 25/11/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var  isShowingStockSearchSheet: Bool = false
    
    var body: some View {
        VStack {
            HeaderView(showSheet: $isShowingStockSearchSheet)
            
            PortfolioCard()
            
            WatchlistView()
            
            Spacer()
        }
        .padding()
        .edgesIgnoringSafeArea(.bottom)
        .sheet(isPresented: $isShowingStockSearchSheet) {
            SearchStockView()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
