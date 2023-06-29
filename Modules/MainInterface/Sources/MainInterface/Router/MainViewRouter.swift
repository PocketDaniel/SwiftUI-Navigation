import SwiftUI

@MainActor
public protocol MainViewRouter {
    func viewFor(tab: MainViewTab) -> AnyView

    func set(tab: MainViewTab)

    func mainView() -> AnyView
}
