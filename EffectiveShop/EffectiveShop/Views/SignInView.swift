//
//  ContentView.swift
//  EffectiveShop
//
//  Created by Никита Мошенцев on 11.03.2023.
//

import SwiftUI

struct SignInView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    
    @FocusState private var textFieldIsFocused: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Sign in")
                    .font(.custom("MontserratBold", size: 35))
                
                customTextField(placeholder: "First name", text: $firstName)
                customTextField(placeholder: "Last name", text: $lastName)
                customTextField(placeholder: "Email", text: $email)
                
                Button {
                    
                } label: {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.purple)
                        .frame(height: 60)
                        .overlay {
                            Text("Sign in")
                                .font(.custom("MontserratBold", size: 20))
                                .foregroundColor(.white)
                        }
                        .padding()
                }
                
                HStack {
                    Text("Already have an account?")
                        .font(.custom("Montserrat", size: 10))
                        .foregroundColor(.gray)
                    
                    NavigationLink(destination: LoginView()) {
                        Text("Log in")
                            .font(.custom("Montserrat", size: 10))
                            .foregroundColor(.blue)
                    }
                    Spacer()
                }
                .padding(.bottom, 50)
                .padding(.leading)
                
                Button {
                    print("Apple")
                } label: {
                    Image("googleIcon")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30)
                        .padding(.trailing)
                    Text("Sign in with Google")
                        .font(.custom("Montserrat", size: 15))
                }
                .foregroundColor(.black)
                
                Button {
                    print("Apple")
                } label: {
                    Image(systemName: "apple.logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30)
                        .padding(.trailing)
                    Text("Sign in with Apple")
                        .font(.custom("Montserrat", size: 15))
                }
                .foregroundColor(.black)
            }
            .padding()
        }
        .onTapGesture {
            textFieldIsFocused = false
        }
    }
    
    @ViewBuilder
    private func customTextField(placeholder: String, text: Binding<String>) -> some View {
        TextField(placeholder, text: text)
            .font(.custom("Montserrat", size: 18))
            .foregroundColor(.gray)
            .multilineTextAlignment(.center)
            .background(RoundedRectangle(cornerRadius: 20)
                .fill(Color(UIColor.systemGray5))
                .frame(height: 40))
            .padding()
            .focused($textFieldIsFocused)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
