import Foundation
import Factory

extension Container {
    public var mainViewRouter: Factory<MainViewRouter?> { promised().singleton }
}
