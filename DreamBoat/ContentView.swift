//
//  ContentView.swift
//  DreamBoat
//
//  Created by Hyejun Kim on 16/2/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        let cloudWidth: CGFloat = 930
        let cloudheight: CGFloat = 415
        
        
        ZStack {
            //                imageView.image = UIImage(named : "Clouds 2")
            
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
            
            
            VStack (alignment: .leading)
            {
                
                
                //                HStack {
                Text("Sleep Basics")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                //                }
                Text("A good night's sleep can help with problem resolution, stress management, and health recovery. Your physical and mental health may suffer as a result of sleep deprivation in many different ways.")
                    .font(.body)
                
                HStack {
                    Button {
                    }
                    label: {
                        Text("Why is sleep important?")
                            .frame(maxWidth: .infinity)
                        
                    }                        .font(.subheadline)
                        .frame(width: 350, height: 30.0)
                        .foregroundColor(.black)
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle)
                        .controlSize(.small)
                    
                    
                    Spacer()
                    
                    Button {
                    }
                    label: {
                        Text("Factors that affect sleep")
                            .frame(maxWidth: .infinity)
                        
                    }                        .font(.subheadline)
                        .frame(width: 350, height: 30.0)
                        .foregroundColor(.black)
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle)
                        .controlSize(.small)
                    
                    
                }.tint(Color.gray)
                
                HStack {
                    
                    Button {
                    }
                    label: {
                        Text("How much sleep?")
                            .frame(maxWidth: .infinity)
                        
                    }                        .font(.subheadline)
                        .frame(width: 350.0, height: 30.0)
                        .foregroundColor(.black)
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle)
                        .controlSize(.small)
                    Spacer()
                    Button {
                    }
                    label: {
                        Text("Can we adapt to needing less sleep?")
                            .frame(maxWidth: .infinity)
                        
                    }                        .font(.subheadline)
                        .frame(width: 350.0, height: 30.0)
                        .foregroundColor(.black)
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle)
                        .controlSize(.small)
                }.tint(Color.gray)
                
                HStack {
                    Button {
                    }
                    label: {
                        Text("What is sleep debt?")
                            .frame(maxWidth: .infinity)
                        
                    }                        .font(.subheadline)
                        .frame(width: 350.0, height: 30.0)
                        .foregroundColor(.black)
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle)
                        .controlSize(.small)
                    Spacer()
                    
                    Button {
                    }
                    label: {
                        Text("Maintain good sleep")
                            .frame(maxWidth: .infinity)
                        
                    }                        .font(.subheadline)
                        .frame(width: 350.0, height: 30.0)
                        .foregroundColor(.black)
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle)
                        .controlSize(.small)
                }.tint(Color(red: 1.001, green: 0.821, blue: 0.79))
                
                HStack {
                    Button {
                    }
                    label: {
                        Text("What is sleep quality?")
                            .frame(maxWidth: .infinity)
                        
                    }                        .font(.subheadline)
                        .frame(width: 350.0, height: 30.0)
                        .foregroundColor(.black)
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle)
                        .controlSize(.small)
                    Spacer()
                    
                    Button {
                    }
                    label: {
                        Text("Oversleeping Effects")
                            .frame(maxWidth: .infinity)
                        
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle)
                    .controlSize(.regular)
                        
                }.tint(Color(red: 1.001, green: 0.821, blue: 0.79))
                    
                    
                    
                }
                .padding(.horizontal, 160)
            }
        }
    }
    //to view canvas
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
