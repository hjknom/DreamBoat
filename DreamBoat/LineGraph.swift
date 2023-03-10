//  ContentView.swift
//  line graph
//
//  Created by Katrina Danaskos on 22/2/2023.
//

import SwiftUI
import Charts


struct StepCount: Identifiable {
let id = UUID()
let weekday: Date
let steps: Int

init(day: String, steps: Int) {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyyMMdd"
    
    self.weekday = formatter.date(from: day) ?? Date.distantPast
    self.steps = steps
}
    
    var shortDay: String {
           let dateFormatter = DateFormatter()
           dateFormatter.dateFormat = "EEE"
           return  dateFormatter.string(from: weekday)
       }
}

let currentWeek: [StepCount] = [
StepCount(day: "20220717", steps: 4200),
StepCount(day: "20220718", steps: 15000),
StepCount(day: "20220719", steps: 2800),
StepCount(day: "20220720", steps: 10800),
StepCount(day: "20220721", steps: 5300),
StepCount(day: "20220722", steps: 10400),
StepCount(day: "20220723", steps: 4000)
]

let previousWeek: [StepCount] = [
    StepCount(day: "20220710", steps: 15800),
    StepCount(day: "20220711", steps: 7300),
    StepCount(day: "20220712", steps: 8200),
    StepCount(day: "20220713", steps: 25600),
    StepCount(day: "20220714", steps: 16100),
    StepCount(day: "20220715", steps: 16500),
    StepCount(day: "20220716", steps: 3200)
]

let stepData = [
    (period: "Current Week", data: currentWeek),
    (period: "Previous Week", data: previousWeek)
]

struct LineGraph: View {
    var body: some View {
        VStack {
            GroupBox ("Line Chart - Step Count") {
                Chart {
                    ForEach(stepData, id: \.period) {
                        steps in
                        
                        ForEach(steps.data) {
                            LineMark(
                                x: .value("Week Day", $0.shortDay),
                                y: .value("Step Count", $0.steps)
                            )
                            
                            .foregroundStyle(by: .value("Week", steps.period))
                            
                        }
                        
                    }
                }
                
                
                
            }
        }
    }
    
}
    
    struct LineGraph_Previews: PreviewProvider {
        static var previews: some View {
            LineGraph()
        }
    }
