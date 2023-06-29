import SwiftUI
import Factory
import Core
import MainInterface

import HomeInterface
import SettingsInterface

public class MainViewNavigationState: ObservableObject {
    @Published public var selectedTab: MainViewTab

    public init(selectedTab: MainViewTab = .home) {
        self.selectedTab = selectedTab
    }
}

@MainActor
public class MainViewRouterImplementation: MainViewRouter {

//    @Injected(\.homeRouter) private var homeRouter: HomeRouter!
//    @Injected(\.settingsRouter) private var settingsRouter: SettingsRouter!

    private var navigationState: MainViewNavigationState

    private var homeRouter: HomeRouter
    private var settingsRouter: SettingsRouter

    public init(
        navigationState: MainViewNavigationState = MainViewNavigationState(),
        homeRouter: HomeRouter,
        settingsRouter: SettingsRouter
    ) {
        self.navigationState = navigationState
        self.homeRouter = homeRouter
        self.settingsRouter = settingsRouter
    }
    
    public func viewFor(tab: MainViewTab) -> AnyView {
        switch tab {
        case .home:
            return homeRouter.entryView()
        case .settings:
            return settingsRouter.entryView()
        }
    }

    public func set(tab: MainViewTab)  {
        navigationState.selectedTab = tab
    }

    public func mainView() -> AnyView {
        return AnyView(MainView(navigationState: navigationState))
    }

}
