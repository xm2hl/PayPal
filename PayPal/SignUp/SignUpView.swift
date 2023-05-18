import SwiftUI

struct SignUpView: View {
    @State var Emailaddress: String = ""
    var body: some View {
        
            ZStack{
                VStack{
                    Image("iconsPayPal")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .navigationBarTitleDisplayMode(.inline)
                        .padding(20)
                    TextField("Email address....", text: $Emailaddress)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .font(.headline)
                        .frame(width: 380, height: 70)
                    TextField("Password", text: $Emailaddress)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .font(.headline)
                        .frame(width: 380, height: 70)
                    HStack{
                        HStack{
                            Text("Forgot password?")
                                .font(.subheadline)
                                .frame(width: 300, height: 30)
                                .multilineTextAlignment(.leading)
                                .padding(.trailing, 200)
                            
                        }
                        
                    }
                    Spacer()
                    
                }
                VStack{
                    ZStack{
                        Capsule()
                            .fill(Color.blue)
                            .frame(width: 300, height: 50)
                            .padding(.leading)
                            .overlay(RoundedRectangle(cornerRadius: 60).stroke(Color("Colorbuttun"),lineWidth: 2))
                        
                        Text("Log In")
                            .font(.title2)
                            .foregroundColor(Color("Colorbuttun"))
                            
                    }
                    ZStack{
                        Capsule()
                            .fill(Color.white)
                            .frame(width: 300, height: 50)
                            .padding(.leading)
                            .overlay(RoundedRectangle(cornerRadius: 60).stroke(Color("Colorbuttun"),lineWidth: 2))
                        Text("Sign Up")
                            .font(.title2)
                            .foregroundColor(Color("Colorbuttun"))
                        
                    }
                }
                }
            }
        }
struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
