import SwiftUI

@MainActor
public protocol MainViewRouter {
    func viewFor(tab: MainViewTab) -> AnyView
}
