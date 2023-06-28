import Foundation
import Factory
import Main
import MainInterface

extension Container {
    @MainActor
    public func autoRegisterMainDependencies() {
        mainViewRouter.register { MainViewRouterImplementation(
            homeRouter: self.homeRouter.callAsFunction()!,
            settingsRouter: self.settingsRouter.callAsFunction()!
        ) }
    }
}
