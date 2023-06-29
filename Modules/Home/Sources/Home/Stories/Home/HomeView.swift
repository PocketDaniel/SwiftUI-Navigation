import SwiftUI
import Factory
import Core
import HomeInterface

struct HomeView: View {
    
    @ObservedObject private var viewModel: HomeViewModel = Container.shared.homeViewModel()

    @ObservedObject var navigationState: HomeNavigationState

    var body: some View {
        NavigationStack(path: $navigationState.routes) {
            VStack(spacing: 24) {
                AsyncButton(action: {
                    await viewModel.performAction(.pressedAccountList)
                }, label: {
                    Text("Present Account List")
                })
                
                AsyncButton(action: {
                    await viewModel.performAction(.pressedTransactionDetails)
                }, label: {
                    Text("Present Transaction Details")
                })

                AsyncButton(action: {
                    await viewModel.performAction(.pressedSettings)
                }, label: {
                    Text("Present Settings")
                })
            }
            .navigationTitle("Home")
            .navigationDestination(for: HomeRoute.self) { $0 }
        }
    }
}
