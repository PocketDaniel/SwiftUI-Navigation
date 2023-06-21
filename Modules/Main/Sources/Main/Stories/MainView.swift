import SwiftUI
import Factory
import MainInterface

public struct MainView: View {
    
    @Injected(\.mainViewRouter) private var router: MainViewRouter!

    public init() { }
    
    public var body: some View {
        TabView {
            ForEach(MainViewTab.allCases) { tab in
                router.viewFor(tab: tab)
                    .tabItem {
                        Label(tab.localizedValue, systemImage: tab.imageName)
                    }
                    .tag(tab)
                    .ignoresSafeArea(edges: .top)
            }
        }
    }
}
