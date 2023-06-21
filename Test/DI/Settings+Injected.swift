import Foundation
import Factory
import Settings
import SettingsInterface

extension Container {
    @MainActor
    public func autoRegisterSettingsDependencies() {
        settingsRouter.register { SettingsRouterImplementation() }
    }
}
