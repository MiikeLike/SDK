//
//  DetailCar.swift
//  Prueba_SKD
//
//  Created by Mikel Valle on 31/1/24.
//

import SwiftUI

struct DetailCar: View {
    var body: some View {
        VStack{
            Image("Car")
                .resizable()
                .edgesIgnoringSafeArea(.top)
                .frame(width: 400, height: 500)
                .clipped()
        }
    }
}

#Preview {
    DetailCar()
}
