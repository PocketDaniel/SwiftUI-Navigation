import SwiftUI
import Factory
import Core
import MainInterface

import HomeInterface
import SettingsInterface

@MainActor
public class MainViewRouterImplementation: MainViewRouter {
    
    @Injected(\.homeRouter) private var homeRouter: HomeRouter!
    @Injected(\.settingsRouter) private var settingsRouter: SettingsRouter!
    
    public init() { }
    
    public func viewFor(tab: MainViewTab) -> AnyView {
        switch tab {
        case .home:
            return homeRouter.entryView()
        case .settings:
            return settingsRouter.entryView()
        }
    }
}
