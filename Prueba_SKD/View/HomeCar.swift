//
//  DetailCar.swift
//  Prueba_SKD
//
//  Created by Mikel Valle on 31/1/24.
//

import SwiftUI
import MapKit

let primaryColor = Color(#colorLiteral(red: 0, green: 0, blue: 0.2588235294117647, alpha: 1))

struct HomeCar: View {
    
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
                    //.frame(height: 340)
                VStack{
                    Map(coordinateRegion: $coordinateRegion, interactionModes: .all, showsUserLocation: true, userTrackingMode: .constant(.none))
                        .padding(.top, 0)
                        .frame(height: 370)
                        .cornerRadius(20)
                    
                    Label("Su coche está aparcado aquí", systemImage: "mappin.and.ellipse")
                        .foregroundColor(.white)
                        .padding(.top, 0)
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}



#Preview {
    HomeCar()
}
