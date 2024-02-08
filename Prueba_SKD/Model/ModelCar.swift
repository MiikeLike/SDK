//
//  ModelCar.swift
//  Prueba_SKD
//
//  Created by Mikel Valle on 6/2/24.
//

import Foundation

struct VehicleModel {
    var operatorID: String
    var model: String
    var purchaseDate: Date
    var fuelType: String
    var oil: Oil
    var tires: Tire
    var notes: String
    
    init(operatorID: String, model: String, purchaseDate: Date, fuelType: String, oil: Oil, tires: Tire, notes: String) {
        self.operatorID = operatorID
        self.model = model
        self.purchaseDate = purchaseDate
        self.fuelType = fuelType
        self.oil = oil
        self.tires = tires
        self.notes = notes
    }
    static func defaultVehicle() -> VehicleModel  {
        return VehicleModel(operatorID: "1234VEHIC",
                            model: "Acura NSX",
                            purchaseDate: Date(),
                            fuelType: "Gasolina",
                            oil: Oil(type: "5W30", lastChangeDate: Date(), lastChangeKm: 26694.0),
                            tires: Tire(sizes: "275R19", lastChangeDate: Date(), lastChangeKm: 25431.0),
                            notes: "")
    }
}

struct Oil {
    var type: String
    var lastChangeDate: Date
    var lastChangeKm: Double
}

struct Tire {
    var sizes: String
    var lastChangeDate: Date
    var lastChangeKm: Double
}


