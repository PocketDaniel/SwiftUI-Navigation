import Foundation
import Factory
import Core
import HomeInterface

class HomeViewModel: BaseViewModel<HomeViewAction, HomeViewState> {
    
    @Published var routes = [HomeRoute]()

    @Injected(\.homeRouter) private var homeRouter: HomeRouter!

    // MARK: - Initialization
    
    init() {
        super.init(state: HomeViewState())
        
        setupBinding()
    }
    
    private func setupBinding() {
        homeRouter.routesPublisher
            .receive(on: RunLoop.main)
            .sink { [weak self] routes in
                self?.routes = routes
            }
            .store(in: &cancellables)
    }

    // MARK: - Actions
    
    override func performAction(_ action: HomeViewAction) async {
        switch action {
        case .pressedAccountList:
            homeRouter.presentAccountList()
        case .pressedTransactionDetails:
            homeRouter.presentTransactionDetailsFromHome()
        case .pressedSettings:
            break
        }
    }
}
