//
//  DetailCar.swift
//  Prueba_SKD
//
//  Created by Mikel Valle on 31/1/24.
//

import SwiftUI
import MapKit

struct HomeCar: View {
    let primaryColor = Color(#colorLiteral(red: 0, green: 0, blue: 0.2588235294117647, alpha: 1))
    
    //MARK: Map
    private struct DefaultRegion {
        static let latitude = 9.9333
        static let longitude = -84.0833
    }
    
    private struct Span {
        static let delta = 0.1
    }
    
    @State var coordinateRegion: MKCoordinateRegion = .init(center: .init(latitude: DefaultRegion.latitude, longitude: DefaultRegion.longitude), span: .init(latitudeDelta: Span.delta, longitudeDelta: Span.delta))
    
    
    var body: some View {
        ZStack{
            let colors: [Color] = [primaryColor, .gray]
            LinearGradient(gradient: Gradient(colors: colors), startPoint: .center, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("Car")
                    .resizable()
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 350)
                Map(coordinateRegion: $coordinateRegion, showsUserLocation: true)
                    .edgesIgnoringSafeArea(.bottom)
                    .frame(height: 300)
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
                //
            }
        }
    }
    
    struct ButtonTab: View {
        var body: some View {
            let primaryColor = Color(#colorLiteral(red: 0, green: 0, blue: 0.2588235294117647, alpha: 1))
            VStack {
                let colors: [Color] = [primaryColor, .gray]
                LinearGradient(gradient: Gradient(colors: colors), startPoint: .center, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
            }
        }
    }
}


#Preview {
    HomeCar()
}
