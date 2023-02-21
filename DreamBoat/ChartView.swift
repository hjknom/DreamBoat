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
//    var barColor: Color = Color.brown
    
    
    @State private var pickerSelectedItem = 0
    @State private var dataPoints: [[CGFloat]] = [
        [160, 120, 160, 150, 120, 180, 150],   //week mulitply by 20
        [100, 120, 200, 170, 180, 190, 110],  //month
        [150, 170, 180, 0.1, 0.1, 0.1, 0.1]  //year
    ]
    
        
        var body: some View {
        
            
//            if (value <= 110){
//                barColor
//            }
            
        //print(dataPoints[0][0].description)
        VStack {
            
        ZStack(alignment: .bottom) {
        Rectangle().frame(width: 80, height: value)
                .foregroundColor((value <= 120) ? Color.red : Color.brown)
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
