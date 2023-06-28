import SwiftUI
import Combine
import Factory
import HomeInterface
import Core

class HomeNavigationState: ObservableObject {
    @Published var routes: [HomeRoute] = []
}

final public class HomeRouterImplementation: HomeRouter {

    var navigationState: HomeNavigationState

    public init() {
        navigationState = HomeNavigationState()
    }
    
    // MARK: - Navigation

    public func push(to screen: HomeRoute) {
        navigationState.routes.append(screen)
    }
    
    public func push(multiple screens: [HomeRoute]) {
        navigationState.routes.append(contentsOf: screens)
    }

    public func pop() {
        _ = navigationState.routes.popLast()
    }
    
    public func popToRoot() {
        navigationState.routes = []
    }
    
    // MARK: - Navigation
    
    public func entryView() -> AnyView {
        HomeView(navigationState: navigationState).toAnyView()
    }
    
    public func presentAccountList() {
        push(to: .accountList)
    }
    
    public func presentAccountDetails() {
        push(to: .accountDetails)
    }
    
    public func presentTransactionDetails() {
        push(to: .transactionDetails)
    }

    public func presentTransactionDetailsFromHome() {
        push(multiple: [
            .accountList,
            .accountDetails,
            .transactionDetails
        ])
    }
}
