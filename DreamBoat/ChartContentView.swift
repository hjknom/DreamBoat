import SwiftUI

struct ChartContentView: View {
    @State private var pickerSelectedItem = 0
    @State var show = false
    @State private var dataPoints: [[CGFloat]] = [
        [160, 120, 160, 150, 120, 180, 150],   //week mulitply by 20
        [100, 120, 200, 170, 180, 190, 110],  //month
        [150, 170, 180, 0.1, 0.1, 0.1, 0.1]  //year
    ]
    var body: some View {
        NavigationView{
            ZStack {
                                
                DrawBackgroundClouds()
                
                VStack {
                    
                    Text("SLEEP SCHEDULE")
                        .font(.system(size: 28))
                        .fontWeight(.heavy)
                        .foregroundColor(Color(.black))
                    
                    HStack(spacing: 15) {
                     
                            ChartView(value: dataPoints[pickerSelectedItem][0], week: "Monday")
                            .onTapGesture {
                                withAnimation {self.show.toggle()}
                            }
                            ChartView(value: dataPoints[pickerSelectedItem][1], week: "Tuesday")
                            .onTapGesture {
                                withAnimation {self.show.toggle()}
                            }
                            ChartView(value: dataPoints[pickerSelectedItem][2], week: "Wednesday")
                            .onTapGesture {
                                withAnimation {self.show.toggle()}
                            }
                            ChartView(value: dataPoints[pickerSelectedItem][3], week: "Thursday")
                            .onTapGesture {
                                withAnimation {self.show.toggle()}
                            }
                            ChartView(value: dataPoints[pickerSelectedItem][4], week: "Friday")
                            .onTapGesture {
                                withAnimation {self.show.toggle()}
                            }
                            ChartView(value: dataPoints[pickerSelectedItem][5], week: "Saturday")
                            .onTapGesture {
                                withAnimation {self.show.toggle()}
                            }
                            ChartView(value: dataPoints[pickerSelectedItem][6], week: "Sunday")
                            .onTapGesture {
                                withAnimation {self.show.toggle()}
                            }
                    }.padding(.top, 10)
                        .animation(.default)
                    
                    Picker(selection: $pickerSelectedItem, label: Text("")) {
                        Text("Week 1").tag(0)
                        Text("Week 2").tag(1)
                        Text("Weel 3").tag(2)
                    }.pickerStyle(SegmentedPickerStyle())
                        .padding(.horizontal, 100)
                }
                
                if self.show {
                    GeometryReader{_ in
                        PopUp()
                    }
                    .frame(width: 800, height: 400)
                        .background(Color.black.opacity(0.30)
                        .edgesIgnoringSafeArea(.all)
                        .onTapGesture{
                            withAnimation{
                                self.show.toggle()
                            }
                        }
                    )
                }
            }
        }
        
    }
    
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
    
    struct ChartContentView_Previews: PreviewProvider {
        static var previews: some View {
            ChartContentView()
        }
    }
}

struct PopUp : View {
    var body : some View {
    
        ZStack{
            VStack(alignment: .center, spacing: 10){
                Text("Friday")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Sleep Duration: 6 hours 27 minutes")
                Text("Bed Time: 11:45pm")
                Text("Sleep Score: 57%")
                Text("")
                Text("Tips")
                    .fontWeight(.bold)
                Text("Try winding down 30 minutes before your sleeping goal")
                Text("Getting to sleep the same time every night can help create a helpful routine")
            }.padding(50)
                .background(Color(red: 0.998, green: 0.87, blue: 0.79))
                .cornerRadius(15)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(red: 0.659, green: 0.61, blue: 0.79), lineWidth: 12))
                .offset(x: 60, y:40)
            

        }
    }
}

