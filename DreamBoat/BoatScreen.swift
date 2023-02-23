import SwiftUI

struct BoatScreen: View {
    
    @State var show = false
    @State var info = false

    
    var body: some View{
        NavigationView{
            
            ZStack{
                
                Image("Boat")
                    .resizable()
                    .frame(width: 940, height: 450, alignment: .center)
                    .offset(y:13)
                
                
                Image("ScrollIcon")
                    .resizable()
                    .frame(width: 45, height: 45)
                    .offset(x: -315, y: -140)
                    .onTapGesture {
                        withAnimation {
                            self.show.toggle()
                        }
                    }
                
                Image("InfoButton")
                    .resizable()
                    .frame(width: 42, height: 42)
                    .offset(x: -368, y: -140)
                    .onTapGesture {
                        withAnimation {
                            self.info.toggle()
                        }
                    }
                
                if self.show {
                    GeometryReader{_ in
                        ChartContentView()
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
                
                if self.info {
                    GeometryReader{_ in
                        SleepInfo()
                    }
                    .frame(width: 800, height: 400)
                        .background(Color.black.opacity(0.30)
                        .edgesIgnoringSafeArea(.all)
                        .onTapGesture{
                            withAnimation{
                                self.info.toggle()
                            }
                        }
                            
                    )
                }

            }
        }
                
    }
}
    
    struct BoatScreen_Previews: PreviewProvider {
        static var previews: some View {
            BoatScreen()
        }
    }
