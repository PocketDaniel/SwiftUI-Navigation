import Foundation
import Factory

@MainActor
public extension Container {
    internal var homeViewModel: Factory<HomeViewModel> {
        self { HomeViewModel() }
    }
    
    internal var accountListViewModel: Factory<AccountListViewModel> {
        self { AccountListViewModel() }
    }
    
    internal var accountDetailsViewModel: Factory<AccountDetailsViewModel> {
        self { AccountDetailsViewModel() }
    }
    
    internal var transactionDetailsViewModel: Factory<TransactionDetailsViewModel> {
        self { TransactionDetailsViewModel() }
    }
}
