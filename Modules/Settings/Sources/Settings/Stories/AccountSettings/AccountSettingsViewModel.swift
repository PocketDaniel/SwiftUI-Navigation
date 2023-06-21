import Foundation
import Core

class AccountSettingsViewModel: BaseViewModel<AccountSettingsViewAction, AccountSettingsViewState> {
    
    // MARK: - Initialization
    
    init() {
        super.init(state: AccountSettingsViewState())
    }

    // MARK: - Actions
    
    override func performAction(_ action: AccountSettingsViewAction) async {
        switch action {
        case .pressedEmailSettings:
            break
        }
    }
}
