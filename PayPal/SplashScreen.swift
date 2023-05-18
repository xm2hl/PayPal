import SwiftUI
struct SplashScreen: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View {
        if isActive {
            Onboarding()
        } else {
            ZStack{
                Color("Colorbackgrwnd")
                    .ignoresSafeArea(.all)
                ZStack {
                    Image("iconsPayPal")
                        .resizable()
                        .padding(0.0)
                        .frame(width: 100, height: 100)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){ withAnimation{
                        self.isActive = true
                    }
                    }
                }
                .padding()
            }
        }
     
    }
}
struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
