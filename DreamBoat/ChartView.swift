////  ChartView.swift
//  DreamBoat
//
//  Created by Katrina Danaskos on 21/2/2023. --> with the help of Avinash :)

import SwiftUI

struct ChartView: View {
    
    
    var value: CGFloat = 0
    var week: String = ""
    var body: some View {
        
    VStack {
    Spacer()
        
    ZStack(alignment: .bottom) {
        
    Capsule().frame(width: 40, height: value)
    .foregroundColor(.white)

        Capsule().frame(width: 30, height: value)
        .foregroundColor(.white)

        Capsule().frame(width: 30, height: value)
        .foregroundColor(.white)

        Capsule().frame(width: 30, height: value)
        .foregroundColor(.white)

      }
    Text(week)
        //Text("TEST").ali
        //go look at the circle example firas showed us to move up the  hours label on top of the column

        }
      }
    
}
    
    
struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
