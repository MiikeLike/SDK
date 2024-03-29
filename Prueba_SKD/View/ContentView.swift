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
    @StateObject private var viewModel = LoginViewModel()
    @State private var isShowingDetailCar = false

    var body: some View {
        ZStack {
            let colors: [Color] = [primaryColor, .gray]
            LinearGradient(gradient: Gradient(colors: colors), startPoint: .center, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("CarTwo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 400, height: 450.0)
                    .cornerRadius(15)
                    .clipped()
                    .edgesIgnoringSafeArea(.top)

                Text("Welcome To App Car")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)

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
                            .textContentType(.emailAddress)
                            .keyboardType(.emailAddress)
                            .padding()
                            .background(Color.white)
                            .frame(height: 50)
                            .cornerRadius(30)
                            .padding([.leading, .bottom, .trailing], 20)

                        SecureField("Password", text: $password)
                            .padding()
                            .background(Color.white)
                            .frame(height: 50)
                            .cornerRadius(30)
                            .padding(.horizontal, 20)

                        HStack {
                            Spacer()
                            Toggle(isOn: $shouldSavePassword) {
                                Text("Save Password")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .padding(.leading, 20)
                            }
                            .padding(.trailing, 20)
                            Spacer()
                        }
                        .padding(.top, 8)

                        Button(action: {
                            viewModel.login()
                            let impact = UIImpactFeedbackGenerator(style: .medium)
                            impact.impactOccurred()
                        }) {
                            Text("Login")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 16)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .transition(.opacity)
                        }
                        .fullScreenCover(isPresented: $isShowingDetailCar) {
                            MainView()
                        }
                    }
                    .padding()
                }
            }
        }
        .onAppear {
            viewModel.loginDelegate = self
        }
    }
}

extension ContentView: LoginActionDelegate {
    func didLoginSuccecss() {
        isShowingDetailCar = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

