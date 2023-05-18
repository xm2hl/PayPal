import SwiftUI
struct OnboardingPeg1: View {
    var body: some View {
        ZStack{
            Color(.white)
            VStack{
                Image("imegpeg1")
                    .resizable()
                    .frame(height: 500)
                    .ignoresSafeArea()
                Text("Discove deals and maximize rewards")
                    .font(.system(size: 34).bold())
                    .multilineTextAlignment(.center)
                    .frame(width: 350, height: 90)
                VStack{
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
struct OnboardingPeg1_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPeg1()
    }
}
