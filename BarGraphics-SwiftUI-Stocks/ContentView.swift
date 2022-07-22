//
//  ContentView.swift
//  BarGraphics-SwiftUI-Stocks
//
//  Created by Mitya Kim on 7/22/22.
//

import SwiftUI

import SwiftUI

struct Stock {
    let price: Double
}

private func getHistoricalStocks() -> [Stock] {
    
    var stocks = [Stock]()
    
    for _ in 1...20 {
        let stock = Stock(price: Double.random(in: 100...300))
        stocks.append(stock)
        
    }
    
    return stocks
}

private func getYearlyLabels() -> [String] {
    return (2000...2021).map { String($0) }
}


struct ContentView: View {
    
    let prices = getHistoricalStocks().map { Int($0.price) }
    let labels = getYearlyLabels()
    
    var body: some View {
        NavigationView {
            
            VStack {
                BarChartView(values: prices, labels: labels)
            }
            
            .navigationTitle("Stocks")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
