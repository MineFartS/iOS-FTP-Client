//
//  LoginForm.swift
//  FTPClient
//
//  Created by Virtual Machine User on 4/7/26.
//

import Foundation
import SwiftUI

struct LoginForm: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    @AppStorage("creds") var creds: FTPCredentials = nil
    
    var body: some View {
        
        TextField("Username", text:$username)
            .textContentType(.username)
            .autocorrectionDisabled(true)
        
        SecureField("Password", text:$password)
            .textContentType(.password)
        
        Button("Save") {
        
            creds = FTPCredentials(
                host: "philh.myftp.biz",
                port: 21,
                username: $username.wrappedValue,
                password: $password.wrappedValue
            )
            
        }
        
    }
    
    
}
