//
//  ChartContentView.swift
//  DreamBoat
//
//  Created by Katrina Danaskos on 21/2/2023.
//

import SwiftUI

struct ChartContentView: View {
        @State private var pickerSelectedItem = 0
        @State private var dataPoints: [[CGFloat]] = [
        [100, 120, 150, 120, 210, 121, 111],
        [105, 125, 155, 125, 215, 125, 115],
        [100, 120, 150, 120, 210, 121, 111],
        [105, 125, 155, 125, 215, 125, 115]
        ]
        var body: some View {
        ZStack {
        Color(red: 0.707, green: 0.742, blue: 0.925).edgesIgnoringSafeArea(.all)
        VStack {
            Spacer() .frame(height: 20)
        Text("Number of Hours Slept")
        .font(.system(size: 28))
        .fontWeight(.heavy)
        .foregroundColor(Color(.white))
        Picker(selection: $pickerSelectedItem, label: Text("")) {
        Text("Week 1").tag(0)
        Text("Week 2").tag(1)
        Text("Week 3").tag(2)
        Text("Week 4").tag(3)

        }

        .pickerStyle(SegmentedPickerStyle())
        .padding(.horizontal, 30)
            Spacer() .frame(height: 15)

        HStack(spacing: 40)
            {
            ChartView(value:dataPoints[pickerSelectedItem][0], week: "Mon  ")
                
            ChartView(value: dataPoints[pickerSelectedItem][1], week: "Tues")

            ChartView(value: dataPoints[pickerSelectedItem][2], week: "Wed ")

            ChartView(value: dataPoints[pickerSelectedItem][3], week: "Thurs")

            ChartView(value: dataPoints[pickerSelectedItem][4], week: "Fri ")

            ChartView(value: dataPoints[pickerSelectedItem][5], week: "Sat ")

            ChartView(value: dataPoints[pickerSelectedItem][5], week: "Sun ")


        }.padding(.bottom, 24)
                .animation(.default)
               }
             }
          }
         }

struct ChartContentView_Previews: PreviewProvider {
    static var previews: some View {
        ChartContentView()
    }
}
