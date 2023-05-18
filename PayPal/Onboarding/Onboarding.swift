import SwiftUI
struct Onboarding: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color(.white)
                VStack{
                    Image("dewwww")
                        .resizable()
                        .frame(height: 500)
                        .ignoresSafeArea()
                    VStack{
                        Text("Send to friends with just a few taps ")
                            .font(.system(size: 34).bold())
                            .multilineTextAlignment(.center)
                            .frame(width: 350, height: 90)
                            .padding()
                        Spacer()
                        HStack{
                            ZStack{
                                Capsule()
                                    .fill(Color.white)
                                    .frame(height: 50)
                                    .padding(.leading)
                                    .overlay(RoundedRectangle(cornerRadius: 40).stroke(Color("Colorbuttun"),lineWidth: 2))
                                Text("Log In")
                                    .font(.title2)
                                    .foregroundColor(Color("Colorbuttun"))
                            }
                            .padding()
                            ZStack{
                                Capsule()
                                    .fill(Color("Colorbuttun"))
                                    .frame(height: 50)
                                    .padding(.trailing)
                                Text("Sign Up")
                                    .font(.title2)
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}
struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
