import SwiftUI

struct ChartContentView: View {
    @State private var pickerSelectedItem = 0
    @State private var dataPoints: [[CGFloat]] = [
        [160, 120, 160, 150, 120, 180, 150],   //week mulitply by 20
        [100, 120, 200, 170, 180, 190, 110],  //month
        [150, 170, 180, 0.1, 0.1, 0.1, 0.1]  //year
    ]
    var body: some View {
    ZStack {
        Color(red: 0.707, green: 0.742, blue: 0.925).edgesIgnoringSafeArea(.all)
        VStack {
            Text("SLEEP SCHEDULE")
                .font(.system(size: 28))
                .fontWeight(.heavy)
                .foregroundColor(Color(.white))
            
            HStack(spacing: 15) {
                ChartView(value: dataPoints[pickerSelectedItem][0], week: "Monday")
                ChartView(value: dataPoints[pickerSelectedItem][1], week: "Tuesday")
                ChartView(value: dataPoints[pickerSelectedItem][2], week: "Wednesday")
                ChartView(value: dataPoints[pickerSelectedItem][3], week: "Thursday")
                ChartView(value: dataPoints[pickerSelectedItem][4], week: "Friday")
                ChartView(value: dataPoints[pickerSelectedItem][5], week: "Saturday")
                ChartView(value: dataPoints[pickerSelectedItem][6], week: "Sunday")
            }.padding(.top, 24)
                .animation(.default)
            
            Picker(selection: $pickerSelectedItem, label: Text("")) {
            Text("Week 1").tag(0)
            Text("Week 2").tag(1)
            Text("Weel 3").tag(2)
            }.pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal, 24)
            }
         }
      }
    }
    struct ChartContentView_Previews: PreviewProvider {
    static var previews: some View {
    ChartContentView()
      }
    }
