//
//  Hike.swift
//  Landmark
//
//  Created by Mohammed aabid on 04/05/22.
//

import Foundation

struct Hike: Codable, Hashable, Identifiable {
    
    var id: Int
    var name: String
    var distance: Double
    var difficulty: Int
    var observations: [Observation]
    
    
    static var formatter = LengthFormatter()
    
    
    var distanceText: String {
        Hike.formatter
            .string(fromValue: distance, unit: .kilometer)
    }
    
    struct Observation: Codable, Hashable {
        var distanceFromStart: Int
        var pace: Range<Double>
        var heartRate: Range<Double>
        
        var elevation: Range<Double>
        
    }
}
