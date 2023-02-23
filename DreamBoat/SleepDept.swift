//
//  SleepDept.swift
//  DreamBoat
//
//  Created by Hyejun Kim on 22/2/2023.
//

import SwiftUI

struct SleepDept: View {
    var body: some View {
        ZStack{
            
            let cloudW: CGFloat = 940
            let cloudH: CGFloat = 445
            
            Image("CloudBG_1")
                .resizable()
                .frame(width: cloudW, height: cloudH)
            Image("CloudBG_2")
                .resizable()
                .frame(width: cloudW, height: cloudH)
            Image("CloudBG_3")
                .resizable()
                .frame(width: cloudW, height: cloudH)
            Image("CloudBG_4")
                .resizable()
                .frame(width: cloudW, height: cloudH)
            Image("Scroll_2")
                .resizable()
                .frame(width:800, height: 300)
                .offset(x:10, y: 10)
            Text("What is sleep dept?")
                .offset(y:-90)
                .font(.custom("AmericanTypewriter", size:30))
            Text("A sleep debt could develop if you haven't slept well or for a sufficient amount of time recently. You may experience both physical and mental exhaustion as your debt piles up. In an effort to prevent creating this debt, make sure you get adequate sleep each night. Getting plenty of shut-eye on the weekends won't always help you pay off your debt. All during the week, it's vital to obtain enough sleep.")
                .frame(width:600, height:400)
                .offset(x:20,y:25)
                .font(.custom("AmericanTypewriter", size:20))

        }
    }
}

struct SleepDept_Previews: PreviewProvider {
    static var previews: some View {
        SleepDept()
    }
}
