//
//  LessSleep.swift
//  DreamBoat
//
//  Created by Hyejun Kim on 22/2/2023.
//

import SwiftUI

struct LessSleep: View {
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
            Text("Can we adapt to needing less sleep?")
                .offset(y:-70)
//                .font(.title)
                .font(.custom("AmericanTypewriter", size:30))
            Text("People don't typically adjust to obtaining less sleep than they require. Even if you could feel like you're used to getting less sleep, your performance is still affected. For instance, it may impair your judgment and quickness of response.")
                .frame(width:600, height:400)
                .offset(x:20,y:25)
                .font(.custom("AmericanTypewriter", size: 20))
            
        }
    }
}

struct LessSleep_Previews: PreviewProvider {
    static var previews: some View {
        LessSleep()
    }
}
