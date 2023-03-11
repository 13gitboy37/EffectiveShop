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
    
    var body: some View {
        VStack {
            Text("Sign In")
                .bold()
                .font(.system(.title))
//            Spacer()
            TextField("First name", text: $firstName)
                .font(.system(size: 20))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .background(RoundedRectangle(cornerRadius: 20)
                    .fill(Color(UIColor.systemGray5))
                    .frame(height: 40))
                .padding()
            
            TextField("Last name", text: $lastName)
                .font(.system(size: 20))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .background(RoundedRectangle(cornerRadius: 20)
                    .fill(Color(UIColor.systemGray5))
                    .frame(height: 40))
                .padding()
            
            TextField("Email", text: $email)
                .font(.system(size: 20))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .background(RoundedRectangle(cornerRadius: 20)
                    .fill(Color(UIColor.systemGray5))
                    .frame(height: 40))
                .padding()
            
            Button {
                
            } label: {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.purple)
                    .frame(height: 60)
                    .overlay {
                        Text("Sign In")
                            .font(.system(.title3))
                            .bold()
                            .foregroundColor(.white)
                    }
                    .padding()
            }
            
            HStack {
                Text("Already have an account?")
                    .font(.system(size: 10))
                    .foregroundColor(.gray)
                Button {
                    
                } label: {
                    Text("Log in")
                        .font(.system(size: 10))
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
                    .font(.system(size: 20))
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
                    .font(.system(size: 20))
            }
            .foregroundColor(.black)
        }
        .padding()
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
