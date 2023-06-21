import Foundation
import Factory

extension Container {
    public var settingsRouter: Factory<SettingsRouter?> { promised().singleton }
}
