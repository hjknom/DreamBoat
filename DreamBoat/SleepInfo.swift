//
//  SleepInfo.swift
//  DreamBoat
//
//  Created by Mitch Munro on 16/2/2023.
//

import SwiftUI

struct SleepInfo: View {
    var body: some View{
        NavigationView
        {
        
        ZStack {
            
            DrawBackgroundClouds()
            
            VStack (alignment: .leading)
            {
                
                GetTopText()
                    .padding(.horizontal, 120)
                
                HStack{
                    
                        
                    
                    //Left Buttons
                        VStack {
                            HStack {
                                NavigationLink(destination:SleepDetails()) {
                                    
                                    Text("Why is sleep important?")
                                        .font(.subheadline)
                                        .fontWeight(.bold)
                                        .frame(width: 250, height: 50.0)
                                        .foregroundColor(.black)
                                        .buttonStyle(.borderedProminent)
                                        .buttonBorderShape(.roundedRectangle)
                                        .controlSize(.large)
                                        .tint(Color(red: 0.707, green: 0.742, blue: 0.925))
                                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 3))
                                        .offset(x:150)
                                }
                                NavigationLink(destination: SleepTime()){
                                    Text("How much sleep?")
                                        .font(.subheadline)
                                        .fontWeight(.bold)
                                        .frame(width: 250, height: 50.0)
                                        .foregroundColor(.black)
                                        .buttonStyle(.borderedProminent)
                                        .buttonBorderShape(.roundedRectangle)
                                        .controlSize(.large)
                                        .tint(Color(red: 0.707, green: 0.742, blue: 0.925))
                                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 3))
                                        .offset(x:150)
                                }
                            }.padding(.all)
                                .offset(x:45, y:50)
                            HStack {
                                NavigationLink(destination:SleepDept()) {
                                    
                                    Text("What is sleep dept?")
                                        .font(.subheadline)
                                        .fontWeight(.bold)
                                        .frame(width: 250, height: 50.0)
                                        .foregroundColor(.black)
                                        .buttonStyle(.borderedProminent)
                                        .buttonBorderShape(.roundedRectangle)
                                        .controlSize(.large)
                                        .tint(Color(red: 0.707, green: 0.742, blue: 0.925))
                                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 3))
                                        .offset(x:150)
                                }
                                NavigationLink(destination: LessSleep()){
                                    Text("Can we adapt to needing less sleep?")
                                        .font(.subheadline)
                                        .fontWeight(.bold)
                                        .frame(width: 250, height: 50.0)
                                        .foregroundColor(.black)
                                        .buttonStyle(.borderedProminent)
                                        .buttonBorderShape(.roundedRectangle)
                                        .controlSize(.large)
                                        .tint(Color(red: 0.707, green: 0.742, blue: 0.925))
                                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 3))
                                        .offset(x:150)
                                }
                            }.padding()
                                .offset(x:45,y:35)
                            
                            
                            HStack {
                                
                                NavigationLink(destination:SleepFactors()) {
                                    
                                    Text("Factors that affect sleep")
                                        .font(.subheadline)
                                        .fontWeight(.bold)
                                        .frame(width: 250, height: 50.0)
                                        .foregroundColor(.black)
                                        .buttonStyle(.borderedProminent)
                                        .buttonBorderShape(.roundedRectangle)
                                        .controlSize(.large)
                                        .tint(Color(red: 0.707, green: 0.742, blue: 0.925))
                                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 3))
                                        .offset(x:150)
                                }
                                
                                NavigationLink(destination: SleepManagement()){
                                    Text("Maintaining good sleep")
                                        .font(.subheadline)
                                        .fontWeight(.bold)
                                        .frame(width: 250, height: 50.0)
                                        .foregroundColor(.black)
                                        .buttonStyle(.borderedProminent)
                                        .buttonBorderShape(.roundedRectangle)
                                        .controlSize(.large)
                                        .tint(Color(red: 0.707, green: 0.742, blue: 0.925))
                                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 3))
                                        .offset(x:150)
                                }
                            }.padding(.all)
                                .offset(x:45,y:20)
                        }
                    
                                            
                        
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .frame(width: /*@START_MENU_TOKEN@*/500.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                    
                    
                    VStack{
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
                .offset(y:-25)
            
            Text("A good night's sleep can help with problem resolution, stress management, and health recovery. Your physical and mental health may suffer as a result of sleep deprivation in many different ways.")
                .font(.body)
                .offset(y:-20)
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
        .fontWeight(.bold)
        .frame(width: 350, height: 50.0)
        .foregroundColor(.black)
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
        .tint(Color(red: 0.707, green: 0.742, blue: 0.925))
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 3))
    }
    
    struct SleepInfo_Previews: PreviewProvider {
        static var previews: some View {
            SleepInfo()
        }
    }
}
