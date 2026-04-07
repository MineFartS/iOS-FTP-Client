//
//  conn.swift
//  FTPClient
//
//  Created by Virtual Machine User on 4/7/26.
//

import Foundation
import SwiftFTPClient


let creds = FTPCredentials(
    host: "philh.myftp.biz",
    port: 21,
    username: "",
    password: ""
)

let conn = FTPClient(
    credentials: creds,
    remotePath: "/ios_backup/"
)
