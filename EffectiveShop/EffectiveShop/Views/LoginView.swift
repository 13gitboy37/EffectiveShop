//
//  LoginView.swift
//  EffectiveShop
//
//  Created by Никита Мошенцев on 11.03.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var login = ""
    @State private var password = ""
    @State private var showPasswordText = false
    
    @FocusState private var textFieldIsFocused: Bool
    
    var body: some View {
        VStack {
            Text("Welcome back")
                .font(.custom("MontserratBold", size: 30))
            
            TextField("First name", text: $login)
                .font(.custom("Montserrat", size: 18))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .background(RoundedRectangle(cornerRadius: 20)
                    .fill(Color(UIColor.systemGray5))
                    .frame(height: 40))
                .padding()
                .focused($textFieldIsFocused)
            
            ZStack(alignment: .trailing) {
                if !showPasswordText {
                    SecureField("Password", text: $password)
                        .font(.custom("Montserrat", size: 18))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .background(RoundedRectangle(cornerRadius: 20)
                            .fill(Color(UIColor.systemGray5))
                            .frame(height: 40))
                        .padding()
                        .focused($textFieldIsFocused)
                        .zIndex(1)
                } else {
                    TextField("\(password)", text: $password)
                        .font(.custom("Montserrat", size: 18))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .background(RoundedRectangle(cornerRadius: 20)
                            .fill(Color(UIColor.systemGray5))
                            .frame(height: 40))
                        .focused($textFieldIsFocused)
                        .padding()
                }
    
                Button {
                    showPasswordText.toggle()
                } label: {
                    Image(systemName: !showPasswordText ? "eye.slash.fill" : "eye.fill")
                        .font(.system(size: 18, weight: .regular))
                        .accentColor(.gray)
                }
                .padding(.trailing, 30)
                .zIndex(1)
            }
            
            Button {
                
            } label: {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.purple)
                    .frame(height: 60)
                    .overlay {
                        Text("Login")
                            .font(.custom("MontserratBold", size: 20))
                            .foregroundColor(.white)
                    }
                    .padding()
            }
        }
        .onTapGesture {
            textFieldIsFocused = false
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
