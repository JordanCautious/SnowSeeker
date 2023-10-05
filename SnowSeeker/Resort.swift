//
//  Resort.swift
//  SnowSeeker
//
//  Created by Jordan Haynes on 10/5/23.
//

import Foundation

struct Resort: Codable, Identifiable {
    let id, name, country, description, imageCredit: String
    let price, size, snowDepth, elevation, runs: Int
    let facilities: [String]
    
    var facilityTypes: [Facility] {
        facilities.map(Facility.init)
    }
    
    static let allResorts: [Resort] = Bundle.main.decode("resorts.json")
    static let example = allResorts[0]
}
