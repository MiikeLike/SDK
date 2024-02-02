//
//  DetailCar.swift
//  Prueba_SKD
//
//  Created by Mikel Valle on 31/1/24.
//

import SwiftUI

struct DetailCar: View {
    let primaryColor = Color(#colorLiteral(red: 0, green: 0, blue: 0.2588235294117647, alpha: 1))
    
    var body: some View {
        ZStack{
            let colors: [Color] = [primaryColor, .gray]
            LinearGradient(gradient: Gradient(colors: colors), startPoint: .center, endPoint: .bottom)
                .border(Color.yellow)
                .edgesIgnoringSafeArea(.all)
            VStack{
                
            }
        }
    }
}

#Preview {
    DetailCar()
}
