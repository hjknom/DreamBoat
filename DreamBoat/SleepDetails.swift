//
//  SleepDetails.swift
//  DreamBoat
//
//  Created by Hyejun Kim on 20/2/2023.
//

import SwiftUI

struct SleepDetails: View {
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
            Text("Why is sleep important?")
                .offset(y:-90)
                .font(.custom("AmericanTypewriter", size:30))
            Text("It is thought that sleep aids in both physical and mental organisation of the body. Simply said, you need to sleep in order for your body and mind to work effectively.The immunological system, heart, blood vessels, and the immune system are all thought to benefit from sleep. It promotes healing and growth while assisting with appetite and weight regulation. Sleep helps with focus, memory, and learning.")
                .frame(width:600, height:400)
                .offset(x:20,y:25)
                .font(.custom("AmericanTypewriter", size:20))
                
        }
    }
}

struct SleepDetails_Previews: PreviewProvider {
    static var previews: some View {
        SleepDetails()
    }
}
