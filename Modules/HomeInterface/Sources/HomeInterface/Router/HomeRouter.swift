import Foundation
import Combine
import SwiftUI
import Core

public protocol HomeRouter: TabBarRouter {
    var routes: [HomeRoute] { get }
    var routesPublisher: Published<[HomeRoute]>.Publisher { get }

    func presentAccountList()
    func presentAccountDetails()
    func presentTransactionDetails()
    func presentTransactionDetailsFromHome()
    func pop()
    func popToRoot()
}
