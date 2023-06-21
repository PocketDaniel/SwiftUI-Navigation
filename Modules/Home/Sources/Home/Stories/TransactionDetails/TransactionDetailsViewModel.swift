import Foundation
import Factory
import Core
import HomeInterface

class TransactionDetailsViewModel: BaseViewModel<TransactionDetailsViewAction, TransactionDetailsViewState> {
    
    @Injected(\.homeRouter) private var homeRouter: HomeRouter!

    // MARK: - Initialization
    
    init() {
        super.init(state: TransactionDetailsViewState())
    }

    // MARK: - Actions
    
    override func performAction(_ action: TransactionDetailsViewAction) async {
        switch action {
        case .pressedPopToRoot:
            homeRouter.popToRoot()
        case .pressedBack:
            homeRouter.pop()
        }
    }
}
