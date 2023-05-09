//
//  SecondView.swift
//  SwiftMasterGit
//
//  Created by David Goggins on 2023/05/02.
//

import SwiftUI
import UIKit

struct SecondView: View {
    @State var showNewScreen: Bool = false
    
    var body: some View {
        VStack(){
            Text("Hello Goggins")
                .font(.title2)
            
            HStack{
                Image(systemName: "tray.fill")
                Text("Step: 2")
            }
            HStack{
                Image(systemName: "tray.fill")
                Text("Current: 0")
            }
            HStack{
                Text("ADD")
            }

        }
    }
}


struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
