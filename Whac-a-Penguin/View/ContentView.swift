//
//  ContentView.swift
//  Whac-a-Penguin
//
//  Created by honorio on 09/11/24.
//

import SwiftUI
import RealityKit

struct ContentView: View {

    var body: some View {
        VStack {
            ImmersiveView()
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
        .environment(AppModel())
}
