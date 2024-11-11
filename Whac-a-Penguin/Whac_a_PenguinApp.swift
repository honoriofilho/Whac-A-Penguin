//
//  Whac_a_PenguinApp.swift
//  Whac-a-Penguin
//
//  Created by honorio on 09/11/24.
//

import SwiftUI

@main
struct Whac_a_PenguinApp: App {

    @State private var appModel = AppModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(appModel)
        }

        ImmersiveSpace(id: appModel.immersiveSpaceID) {
            ImmersiveView()
                .environment(appModel)
                .onAppear {
                    appModel.immersiveSpaceState = .open
                }
                .onDisappear {
                    appModel.immersiveSpaceState = .closed
                }
        }
        .immersionStyle(selection: .constant(.progressive), in: .progressive)
    }
}
