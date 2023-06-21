import Foundation
import Core

public protocol SettingsRouter: TabBarRouter {
    func presentAccountSettings()
    func presentEmailSettings()
}
