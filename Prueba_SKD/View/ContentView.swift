//
//  ContentView.swift
//  Prueba_SKD
//
//  Created by Mikel Valle on 30/1/24.
//
import SwiftUI

struct ContentView: View {
    @State private var isShowingSignUp = false
    @State private var email = ""
    @State private var password = ""
    @State private var shouldSavePassword = false

    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .gray], startPoint: .center, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)

            VStack{
                Image("LogoMVP")
                    .resizable()
                    .frame(width: 400, height: 400)
                    .edgesIgnoringSafeArea(.all)
                    


                Spacer()

                Text("Welcome To App Car")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(.bottom, 8)

                Spacer()


                HStack {
                    Spacer()
                        

                    Button(action: {
                        withAnimation {
                            self.isShowingSignUp.toggle()
                        }
                    }) {
                        Text("Sign up")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                            .padding(.horizontal, 16)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .transition(.slide)
                    }

                    Spacer()
                }
                .padding(.top, 8)

                Spacer()
     
                if isShowingSignUp {
                    VStack {
                        TextField("Email Id or User Name", text: $email)
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(5)
                            .padding(.bottom, 8)

                        SecureField("Password", text: $password)
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(5)
                            .padding(.bottom, 8)

                        HStack {
                            Spacer()
                            Toggle(isOn: $shouldSavePassword) {
                                Text("Save Password")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                            }

                            Spacer()
                        }
                        .padding(.top, 8)

                        Button(action: {
                            // Handle sign up logic here
                        }) {
                            Text("Login")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .padding(.vertical, 8)
                                .padding(.horizontal, 16)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .transition(.opacity)
                        }

                        Spacer()
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: .gray.opacity(0.3), radius: 10, x: 0, y: 0)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}