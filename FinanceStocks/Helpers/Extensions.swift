//
//  Extensions.swift
//  FinanceStocks
//
//  Created by Amaechi Chukwu on 25/11/2022.
//

import UIKit
import SwiftUI

extension Color {
    public static var darkBlue: Color {
        return Color(UIColor(red: 3/255, green: 49/255, blue: 75/255, alpha: 1.0))
    }
    
    public static var lightGreen: Color {
        return Color(UIColor(red: 30/255, green: 204/255, blue: 151/255, alpha: 1.0))
    }
}


   
extension Array where Element == CGFloat {
    
    var normalizedValues: [CGFloat] {
        
        if let min = self.min(), let max = self.max() {
            return self.map ({($0 - min)/(max - min)})
        }
        return []
    }
}
