//
//  DetailCar.swift
//  Prueba_SKD
//
//  Created by Mikel Valle on 31/1/24.
//

import SwiftUI

struct HomeCar: View {
    let primaryColor = Color(#colorLiteral(red: 0, green: 0, blue: 0.2588235294117647, alpha: 1))
    
    var body: some View {
        
        ZStack{
            TabView {
                ButtonTab()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Inicio")
                    }
                ButtonTab()
                    .tabItem {
                        Image(systemName: "car.front.waves.down")
                        Text("Vehículo")
                    }
                ButtonTab()
                    .tabItem {
                        Image(systemName: "suv.side.front.open")
                        Text("Mantenimiento")
                    }
            }
            .accentColor(.white)
        }
    }
    
    struct ButtonTab: View {
        var body: some View {
            let primaryColor = Color(#colorLiteral(red: 0, green: 0, blue: 0.2588235294117647, alpha: 1))
            VStack {
                let colors: [Color] = [primaryColor, .gray]
                LinearGradient(gradient: Gradient(colors: colors), startPoint: .center, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    
                }

            }
        }
    }
}


#Preview {
    HomeCar()
}
