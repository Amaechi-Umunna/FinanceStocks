//
//  StockModel.swift
//  FinanceStocks
//
//  Created by Amaechi Chukwu on 20/12/2022.
//

import Foundation

struct StockModel: Hashable {
    let symbol: String // AAPL
    let description: String? // Apple Inc
    let currentPrice: Double? // 150.20
    let percentageChange: Double?
    let candles: [CGFloat]
}
