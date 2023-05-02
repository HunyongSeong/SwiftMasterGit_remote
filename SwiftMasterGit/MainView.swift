//
//  ContentView.swift
//  SwiftMasterGit
//
//  Created by David Goggins on 2023/05/02.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack{
            
            Color.blue.ignoresSafeArea(.all)
            
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("텍스트 변경2")
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
