import Foundation
import Combine
import SwiftUI
import Core

public protocol HomeRouter: TabBarRouter {
    func presentAccountList()
    func presentAccountDetails()
    func presentTransactionDetails()
    func presentTransactionDetailsFromHome()
    func pop()
    func popToRoot()
}
