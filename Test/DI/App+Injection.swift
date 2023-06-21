import Foundation
import Factory

extension Container: AutoRegistering {
    @MainActor
    public func autoRegister() {
        autoRegisterMainDependencies()
        autoRegisterSettingsDependencies()
        autoRegisterHomeDependencies()
    }
}
