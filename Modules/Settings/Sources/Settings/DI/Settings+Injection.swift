import Foundation
import Factory

@MainActor
public extension Container {
    internal var settingsViewModel: Factory<SettingsViewModel> {
        self { SettingsViewModel() }
    }
    
    internal var accountSettingsViewModel: Factory<AccountSettingsViewModel> {
        self { AccountSettingsViewModel() }
    }
    
    internal var emailSettingsViewModel: Factory<EmailSettingsViewModel> {
        self { EmailSettingsViewModel() }
    }
}
