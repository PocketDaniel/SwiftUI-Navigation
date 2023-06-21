import Foundation
import Core

class SettingsViewModel: BaseViewModel<SettingsViewAction, SettingsViewState> {
    
    // MARK: - Initialization
    
    init() {
        super.init(state: SettingsViewState())
    }

    // MARK: - Actions
    
    override func performAction(_ action: SettingsViewAction) async {
        switch action {
        case .pressedAccountSettings:
            break
        case .pressedSecuritySettings:
            break
        case .pressedSimulateTransactionNotification:
            break
        }
    }
}
