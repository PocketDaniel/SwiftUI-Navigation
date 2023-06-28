import SwiftUI
import Factory
import SettingsInterface
import Core

public enum AccountSettingsRoute: Hashable {
    case list
    case detail
}

extension AccountSettingsRoute: View {

    public var body: some View {
        switch self {
        case .list:
            List {
                Text("List")
            }
        case .detail:
            Text("Detail")
        }
    }
}


public class SettingsNavigationState: ObservableObject {
    @Published var accountSheetPresented: Bool = false
    @Published var accountSettingsRoutes = [AccountSettingsRoute]()
    var routesToRestore = [AccountSettingsRoute]()

    public init() {

    }

    func restore() {
        accountSettingsRoutes.removeAll()
        accountSettingsRoutes.append(contentsOf: routesToRestore)
        routesToRestore.removeAll()
    }
}

final public class SettingsRouterImplementation: SettingsRouter {

    var navigationState: SettingsNavigationState

    public init() {
        navigationState = SettingsNavigationState()
    }
    
    public func entryView() -> AnyView {
        SettingsView(navigationState: navigationState).toAnyView()
    }
    
    public func presentAccountSettings() {
        // TODO: Implement
        print("presentAccountSettings")
    }
    
    public func presentEmailSettings() {
        navigationState.accountSheetPresented = true
        navigationState.routesToRestore.append(contentsOf: [.detail])
    }
}
