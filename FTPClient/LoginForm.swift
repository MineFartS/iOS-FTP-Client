//
//  LoginForm.swift
//  FTPClient
//
//  Created by Virtual Machine User on 4/7/26.
//

import Foundation
import SwiftUI

struct LoginView: View {
    
    @AppStorage("username") var username: String = ""
    @AppStorage("password") var password: String = ""
    
    var body: some View {
        
        TextField("Username", text:$username)
            .textContentType(.username)
            .autocorrectionDisabled(true)
        
        SecureField("Password", text:$password)
            .textContentType(.password)
        
        Button("Save") {
            // TODO
        }
        
    }
    
    
}
