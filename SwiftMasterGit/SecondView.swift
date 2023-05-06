//
//  SecondView.swift
//  SwiftMasterGit
//
//  Created by David Goggins on 2023/05/02.
//

import SwiftUI
import UIKit

struct SecondView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue, Color.orange, Color.purple]),
                                       startPoint: .leading,
                                       endPoint: .trailing)
                    )

    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
