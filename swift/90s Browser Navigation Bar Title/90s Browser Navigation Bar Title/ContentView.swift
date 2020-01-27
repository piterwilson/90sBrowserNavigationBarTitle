//
//  ContentView.swift
//  90s Browser Navigation Bar Title
//
//  Created by Juan Carlos Ospina Gonzalez on 27/01/2020.
//  Copyright © 2020 Juan Carlos Ospina Gonzalez. All rights reserved.
//

import SwiftUI

@available(iOS 13, macCatalyst 13, tvOS 13, watchOS 6, *)
struct H1: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Text("::")
                .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 10.0))
            content
            Text("::")
                .padding(EdgeInsets(top: 0.0, leading: 10.0, bottom: 0.0, trailing: 0.0))
        }
    }
}

@available(iOS 13, macCatalyst 13, tvOS 13, watchOS 6, *)
extension Text {
    func h1() -> some View {
        return self.modifier(H1())
    }
}

struct ContentView: View {
    var body: some View {
        Text("SUPER COOL TITLE").h1()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 300.0, height: 200.0))
    }
}
