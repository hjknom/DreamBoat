//
//  ChartView.swift
//  ChartDemo
//
//  Created by Avinash Singh on 17/2/2023.
//

import SwiftUI

struct ChartView: View {
    
    var value: CGFloat = 0
    var week: String = ""
        
        var body: some View {
        
        VStack {
            
        ZStack(alignment: .bottom) {
        Rectangle().frame(width: 80, height: value)
                .foregroundColor((value <= 120) ? Color(.sRGB, red: 0.98, green: 0.2, blue: 0.2) : Color(.brown))
                .overlay(RoundedRectangle(cornerRadius: 7).stroke(Color.black, lineWidth: 3))
        }
            
        Text(week)
            
            }
        }
}
    
struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
