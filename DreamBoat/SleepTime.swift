//
//  SleepTime.swift
//  DreamBoat
//
//  Created by Hyejun Kim on 21/2/2023.
//

import SwiftUI

struct SleepTime: View {
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
            VStack {
                Text("How much sleep?")
                   .offset(y:-30)
                   .font(.custom("AmericanTypewriter", size:30))
                
                Text("Many factors affect how much sleep you need. Age is a big factor: ")
                    .offset(x:20,y:-10)
                    .font(.custom("AmericanTypewriter", size:20))
                Text("* Infants need about 16 hours a day.")
                    .offset(y:0.5)
                    .font(.custom("AmericanTypewriter", size:20))
                Text("* Toddlers and preschoolers need about 12 hours.")
                   .offset(y: 5)
                   .font(.custom("AmericanTypewriter", size:20))
                Text("* Teenagers need about nine hours.")
                    .offset(y:10)
                    .font(.custom("AmericanTypewriter", size:20))
                Text("* Pregnant people often need more sleep during the first trimester.")
                    .offset(y:15)
                    .font(.custom("AmericanTypewriter", size:20))
                
            }
            
            
        }
    }
}
struct SleepTime_Previews: PreviewProvider {
    static var previews: some View {
        SleepTime()
    }
}
