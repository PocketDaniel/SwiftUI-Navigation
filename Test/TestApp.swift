import SwiftUI
import Factory
import MainInterface

@main
struct TestApp: App {

    @Injected(\.mainViewRouter) private var mainViewRouter: MainViewRouter!

    var body: some Scene {
        WindowGroup {
            mainViewRouter.mainView()
        }
    }
}
