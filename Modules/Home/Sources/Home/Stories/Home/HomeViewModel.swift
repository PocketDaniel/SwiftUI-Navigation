import Foundation
import Factory
import Core
import HomeInterface
import MainInterface
import SettingsInterface

class HomeViewModel: BaseViewModel<HomeViewAction, HomeViewState> {

    @Injected(\.homeRouter) private var homeRouter: HomeRouter!
    @Injected(\.mainViewRouter) private var mainViewRouter: MainViewRouter!
    @Injected(\.settingsRouter) private var settingsRouter: SettingsRouter!

    // MARK: - Initialization
    
    init() {
        super.init(state: HomeViewState())
    }

    // MARK: - Actions
    
    override func performAction(_ action: HomeViewAction) async {
        switch action {
        case .pressedAccountList:
            homeRouter.presentAccountList()
        case .pressedTransactionDetails:
            homeRouter.presentTransactionDetailsFromHome()
        case .pressedSettings:
            mainViewRouter.set(tab: .settings)
            settingsRouter.presentEmailSettings()
        }
    }
}
