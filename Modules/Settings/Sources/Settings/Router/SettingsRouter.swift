import SwiftUI
import Factory
import SettingsInterface
import Core

final public class SettingsRouterImplementation: SettingsRouter {
    
    public init() { }
    
    public func entryView() -> AnyView {
        SettingsView().toAnyView()
    }
    
    public func presentAccountSettings() {
        // TODO: Implement
        print("presentAccountSettings")
    }
    
    public func presentEmailSettings() {
        // TODO: Implement
        print("presentEmailSettings")
    }
}
