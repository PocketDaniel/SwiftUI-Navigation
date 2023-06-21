import Foundation
import Factory

extension Container {
    public var homeRouter: Factory<HomeRouter?> { promised().singleton }
}
