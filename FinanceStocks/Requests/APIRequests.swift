//
//  APIRequests.swift
//  FinanceStocks
//
//  Created by Amaechi Chukwu on 06/12/2022.
//

import Foundation

class APIRequest {
    static let instance = APIRequest()
    
//    MARK: Variables for the API
    private var url = "https://finnhub.io/api/v1/"
    private var token = "&token=ce7b5s2ad3i49jjdpkegce7b5s2ad3i49jjdpkf0"
    
    public func getSymbolQuote(symbol: String, handler: @escaping(_ returnedQuote: Quote?) -> ()) {
        let query: String = "quote?symbol=\(symbol)"
        let url = URL(string: url + query + token)
        
        if let url = url {
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                if let error = error {
//                    we have an error here
                    
                    print("error getting quote: \(error)")
                    return
                }
                guard let quoteData = data else {
                    // AAPL -> APPLEEEE
                print("symbol search data not valid")
                    return
                }
                let returnedQuote = try? JSONDecoder().decode(Quote.self, from: quoteData)
                
                handler(returnedQuote)
            }
            task.resume()
        }
    }
    
    public func getSymbolLookup(searchQuery: String, handler: @escaping(_ returnedLookup: StockSymbolSearch?) -> ()) {
        let query: String = "search?q=\(searchQuery)"
        
        let url = URL(string: url + query + token)
        
        if let url = url {
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                if let error = error {
                    print("error searching for symbols: \(error)")
                    return
                } else {
                    guard let searchData = data else {
                        print("symbol search not valid")
                        return
                    }
                    let returnedSymbols = try? JSONDecoder().decode(StockSymbolSearch.self, from: searchData)
                    
                    handler(returnedSymbols)
                }
            }
            task.resume()
            
        }
    }
    
    public func getCandles(symbol: String, hourLength: Int, handler: @escaping(_ returnedCandles: Candles?) -> ()) {
        // dates
        let endDate = Int(Date().timeIntervalSince1970)
        let startDate = Int((Calendar.current.date(byAdding: .day, value: -(hourLength), to: Date())?.timeIntervalSince1970 ?? Date().timeIntervalSince1970))
        
        let query = "stock/candle?symbol=\(symbol)&resolution=5&from=\(startDate)&to=\(endDate)"
        
        let url = URL(string: url + query + token)
        
        if let url = url {
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                if let error = error {
                    print("error getting candles: \(error)")
                    return
                } else {
                    guard let searchData = data else {
                        print("candle data not valid")
                        return
                    }
                    let returnedCandles = try? JSONDecoder().decode(Candles.self, from: searchData)
                    handler(returnedCandles)
                }
            }
            task.resume()
            
        }
    
    }
}

