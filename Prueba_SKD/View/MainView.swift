//
//  MainView.swift
//  Prueba_SKD
//
//  Created by Mikel Valle on 5/2/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        TabView{

            HomeCar().tabItem {
                Label("Inicio", systemImage: "house.fill")
            }
            CarView().tabItem {
                Label("Vehículo", systemImage: "car.front.waves.up.fill")
            }
            
            Maintenance().tabItem {
                Label("Mantenimiento", systemImage:"suv.side.front.open")
            }
        }
        .accentColor(.white)
    }
}

#Preview {
    MainView()
}
