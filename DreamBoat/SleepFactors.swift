//
//  SleepFactors.swift
//  DreamBoat
//
//  Created by Hyejun Kim on 22/2/2023.
//

import SwiftUI

struct SleepFactors: View {
    
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
            Text("Factors that affect sleep")
                .offset(y:-85)
                .font(.custom("AmericanTypewriter", size:30))
            Text("Failure to practice good sleep hygiene can affect sleep quality. Some other common factors are:")
                .frame(width:600, height:400)
                .offset(x:20,y:25)
                .font(.custom("AmericanTypewriter", size:20))
        }
    }
}

struct SleepFactors_Previews: PreviewProvider {
    static var previews: some View {
        SleepFactors()
    }
}
