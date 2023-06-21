import Foundation
import Core

class EmailSettingsViewModel: BaseViewModel<EmailSettingsViewAction, EmailSettingsViewState> {
    
    // MARK: - Initialization
    
    init() {
        super.init(state: EmailSettingsViewState())
    }

    // MARK: - Actions
    
    override func performAction(_ action: EmailSettingsViewAction) async {
        switch action {
        case .pressedPopOneScreen:
            break
        case .pressedPopToRoot:
            break
        case .pressedSimulateTransactionNotificationOnTop:
            break
        case .pressedSimulateTransactionNotificationReroute:
            break
        }
    }
}
