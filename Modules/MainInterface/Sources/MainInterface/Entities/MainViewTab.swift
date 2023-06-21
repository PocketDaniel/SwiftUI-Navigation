import Foundation
import SwiftUI
import Core

public enum MainViewTab: String, CaseIterable {
    case home
    case settings
}

// MARK: - Identifiable

extension MainViewTab: Identifiable {
    
    public var id: String {
        rawValue
    }
}

// MARK: - Localizable

extension MainViewTab {
    
    public var localizedValue: String {
        switch self {
        case .home:      return "Home"
        case .settings:  return "Settings"
        }
    }
}

// MARK: - Helpers

public extension MainViewTab {
    
    var imageName: String {
        switch self {
        case .home:      return "house.fill"
        case .settings:  return "gearshape.fill"
        }
    }
}
