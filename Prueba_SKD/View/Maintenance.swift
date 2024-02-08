//
//  Maintenance.swift
//  Prueba_SKD
//
//  Created by Mikel Valle on 3/2/24.
//

import SwiftUI

struct Maintenance: View {
  @State private var vehicle = VehicleModel.defaultVehicle()

  private let oilTypes = ["5W30", "5W40", "10W40"]
  private let tireSizes = ["255R19", "275R19"]

  var body: some View {
    Form {
      Section(header: Text("Información Del Vehículo")) {
        HStack {
          Text("Matrícula")
          Spacer()
          Text(vehicle.operatorID)
        }
        HStack {
          Text("Modelo")
          Spacer()
          Text(vehicle.model)
        }
        HStack {
          Text("Fecha De Fabricación")
          Spacer()
          Text(vehicle.formattedPurchaseDate())
        }
        HStack {
          Text("Tipo De Gasolina")
          Spacer()
          Text(vehicle.fuelType)
        }
      }

      Section(header: Text("Aceite")) {
        Picker("Tipo De Aceite", selection: $vehicle.oil.type) {
          ForEach(oilTypes, id: \.self) { type in
            Text(type)
          }
        }
        .pickerStyle(SegmentedPickerStyle())

        HStack {
          Text("Ultimo Cambio")
          Spacer()
          Text(vehicle.formattedDate(vehicle.oil.lastChangeDate))
          Text("Km")
          Spacer()
          Text(vehicle.formattedNumber(vehicle.oil.lastChangeKm))
        }

        HStack {
          Text("Tipo")
          Spacer()
          TextField("5W30", text: $vehicle.oil.type)
            .keyboardType(.numberPad)
        }
      }
        
      Section(header: Text("Neumáticos")) {
        Picker("Tamaño Del Neumático", selection: $vehicle.tires.sizes) {
          ForEach(tireSizes, id: \.self) { size in
            Text(size)
          }
        }
        .pickerStyle(SegmentedPickerStyle())
         
        HStack {
          Text("Ultimo Cambio")
          Spacer()
          Text(vehicle.formattedDate(vehicle.tires.lastChangeDate))
          Text("Km")
          Spacer()
          Text(vehicle.formattedNumber(vehicle.tires.lastChangeKm))
        }
          
        HStack {
          Text("Número")
          Spacer()
            TextField("2", text: $vehicle.tires.sizes)
            .keyboardType(.numberPad)
        }
      }
  
      Section(header: Text("Notas")) {
        TextEditor(text: $vehicle.notes)
          .frame(height: 100)
      }
    }
  }
}

#Preview {
    Maintenance()
}
