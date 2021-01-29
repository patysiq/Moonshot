//
//  Mission.swift
//  Moonshot
//
//  Created by PATRICIA S SIQUEIRA on 28/01/21.
//

import Foundation

struct Mission: Codable, Identifiable {
    
    struct CrewRole: Codable {
        let name: String
        let role: String
    }

    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
    
    var displayName: String {
        "Apollo \(id)"
    }

    var image: String {
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String {
        if let launchDate = launchDate {
            let formatter = DateFormatter()
            formatter.dateStyle = .long
            return formatter.string(from: launchDate)
        } else {
            return "N/A"
        }
    }
    
    var formattedCrew: String {
          var result = ""
          for crewMember in crew {
              result += "\(crewMember.name.capitalized), "
          }
          return String(result.dropLast(2))
      }
}
