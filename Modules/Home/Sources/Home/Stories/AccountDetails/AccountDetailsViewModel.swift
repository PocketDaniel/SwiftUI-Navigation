import Foundation
import Factory
import Core
import HomeInterface

class AccountDetailsViewModel: BaseViewModel<AccountDetailsViewAction, AccountDetailsViewState> {
    
    @Injected(\.homeRouter) private var homeRouter: HomeRouter!

    // MARK: - Initialization
    
    init() {
        super.init(state: AccountDetailsViewState())
    }

    // MARK: - Actions
    
    override func performAction(_ action: AccountDetailsViewAction) async {
        switch action {
        case .pressedTransactionDetails:
            homeRouter.presentTransactionDetails()
        case .pressedBack:
            homeRouter.pop()
        }
    }
}
