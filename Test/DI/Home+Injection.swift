import Foundation
import Factory
import Home
import HomeInterface

extension Container {
    @MainActor
    public func autoRegisterHomeDependencies() {
        homeRouter.register { HomeRouterImplementation() }
    }
}
