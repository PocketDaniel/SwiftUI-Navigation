import SwiftUI
import Combine
import Factory
import HomeInterface
import Core

final public class HomeRouterImplementation: HomeRouter {
    
    public init() { }
    
    // MARK: - Navigation
    
    @Published public var routes = [HomeRoute]()
    public var routesPublisher: Published<[HomeRoute]>.Publisher { $routes }
    
    public func push(to screen: HomeRoute) {
        routes.append(screen)
    }
    
    public func push(multiple screens: [HomeRoute]) {
        routes.append(contentsOf: screens)
    }

    public func pop() {
        _ = routes.popLast()
    }
    
    public func popToRoot() {
        routes = []
    }
    
    // MARK: - Navigation
    
    public func entryView() -> AnyView {
        HomeView().toAnyView()
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
