//
//  CarView.swift
//  Prueba_SKD
//
//  Created by Mikel Valle on 3/2/24.
//

import SwiftUI

struct CarView: View {
    var body: some View {
        VStack{
            
        }
        let colors: [Color] = [primaryColor, .gray]
        LinearGradient(gradient: Gradient(colors: colors), startPoint: .center, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    CarView()
}
