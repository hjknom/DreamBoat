//
//  SleepInfo.swift
//  DreamBoat
//
//  Created by Mitch Munro on 16/2/2023.
//

import SwiftUI

struct SleepInfo: View {
    var body: some View
    {
        
        ZStack {
            
            DrawBackgroundClouds()
            
            VStack (alignment: .leading)
            {
                
                GetTopText()
                .padding(.horizontal, 120)
                
                HStack{
                    
                    //Left Buttons
                    VStack{
                        InfoButton(buttonText: "Why is sleep Important?")
                        InfoButton(buttonText: "Why is sleep Important?")
                        InfoButton(buttonText: "Why is sleep Important?")
                        
                    }
                    .padding(.horizontal, 120)
                    
                    //Right Buttons
                    VStack{
                        InfoButton(buttonText: "Why is sleep Important?")
                        InfoButton(buttonText: "Why is sleep Important?")
                        InfoButton(buttonText: "Why is sleep Important?")
                    }
                    .padding(.horizontal, -120)
                    
                }
                
            }
        }
    }
    
    //COMPONENTS
    
    func DrawBackgroundClouds() -> some View{
        
        ZStack{
            let cloudWidth: CGFloat = 930
            let cloudheight: CGFloat = 415
            
            Image("CloudBG_1")
                .resizable()
                .frame(width: cloudWidth, height: cloudheight)
            Image("CloudBG_2")
                .resizable()
                .frame(width: cloudWidth, height: cloudheight)
            Image("CloudBG_3")
                .resizable()
                .frame(width: cloudWidth, height: cloudheight)
            Image("CloudBG_4")
                .resizable()
                .frame(width: cloudWidth, height: cloudheight)
        }
    }
    
    func GetTopText() -> some View{
        VStack (alignment: .leading)
        {
            Text("Sleep Basics")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            Text("A good night's sleep can help with problem resolution, stress management, and health recovery. Your physical and mental health may suffer as a result of sleep deprivation in many different ways.")
                .font(.body)
        }
    }
    
    func InfoButton(buttonText: String) -> some View {
        Button {}
                       label:
                        {
            Text(buttonText)
                .frame(maxWidth: .infinity)
        }
            .font(.subheadline)
            .frame(width: 350, height: 50.0)
            .foregroundColor(.black)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
    }
    
    struct SleepInfo_Previews: PreviewProvider {
        static var previews: some View {
            SleepInfo()
        }
    }
}