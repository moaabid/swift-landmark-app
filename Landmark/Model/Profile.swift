//
//  Profile.swift
//  Landmark
//
//  Created by Mohammed aabid on 05/05/22.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    static let `default` = Profile(username: "Guest")
    
    enum Season: String, CaseIterable, Identifiable {
          case spring = "🌷"
          case summer = "🌞"
          case autumn = "🍂"
          case winter = "☃️"

          var id: String { rawValue }
      }
    
}
