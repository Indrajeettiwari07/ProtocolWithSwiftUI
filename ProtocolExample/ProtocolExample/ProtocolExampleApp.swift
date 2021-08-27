//
//  ProtocolExampleApp.swift
//  ProtocolExample
//
//  Created by Inder Tiwari on 26/08/2021.
//

import SwiftUI

@main
struct ProtocolExampleApp: App {
    var body: some Scene {
        WindowGroup {
			HomeView(HomeViewModel())
        }
    }
}
