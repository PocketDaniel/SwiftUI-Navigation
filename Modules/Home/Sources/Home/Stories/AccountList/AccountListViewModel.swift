import Foundation
import Factory
import Core
import HomeInterface

class AccountListViewModel: BaseViewModel<AccountListViewAction, AccountListViewState> {
    
    @Injected(\.homeRouter) private var homeRouter: HomeRouter!

    // MARK: - Initialization
    
    init() {
        super.init(state: AccountListViewState())
    }

    // MARK: - Actions
    
    override func performAction(_ action: AccountListViewAction) async {
        switch action {
        case .pressedAccountDetails:
            homeRouter.presentAccountDetails()
        case .pressedBack:
            homeRouter.pop()
        }
    }
}
