import Foundation
import Combine

@MainActor
open class BaseViewModel<A: BaseViewAction, S: BaseViewState>: ObservableObject {
    
    @Published public var state: S
    
    public var cancellables = Set<AnyCancellable>()

    public init(state: S) {
        self.state = state
    }
    
    open func performAction(_ action: A) async { }
}
