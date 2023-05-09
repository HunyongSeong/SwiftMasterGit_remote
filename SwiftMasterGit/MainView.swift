//
//  ContentView.swift
//  SwiftMasterGit
//
//  Created by David Goggins on 2023/05/02.
//

import SwiftUI

struct MainView: View {
    @State var firstTitle = "firstTitle"
    @State var secondTitle = "secondTitle"
    @State var thirdTitle = "thirdTitle"
    
    var body: some View {
        VStack {
            Text(firstTitle)
                .background(.random)
            Text(secondTitle)
                .background(.random)
            Text(thirdTitle)
                .background(.random)
            
            Button("Change first title") {
                firstTitle = "hello world"
            }
        }
    }
}

extension ShapeStyle where Self == Color {
    static var random: Color {
        Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
