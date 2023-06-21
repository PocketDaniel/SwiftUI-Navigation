import SwiftUI
import HomeInterface

extension HomeRoute: View {
    
    public var body: some View {
        switch self {
        case .accountList:
            AccountListView()
        case .accountDetails:
            AccountDetailsView()
        case .transactionDetails:
            TransactionDetailsView()
        }
    }
}
