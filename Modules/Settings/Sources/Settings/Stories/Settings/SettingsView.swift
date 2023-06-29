import SwiftUI
import Factory
import Core

struct SettingsView: View {
    
    @ObservedObject private var viewModel: SettingsViewModel = Container.shared.settingsViewModel()

    @ObservedObject var navigationState: SettingsNavigationState

    var body: some View {
        VStack(spacing: 24) {
            AsyncButton(action: {
                await viewModel.performAction(.pressedAccountSettings)
            }, label: {
                Text("Present Account Settings")
            })
            
            AsyncButton(action: {
                await viewModel.performAction(.pressedSecuritySettings)
            }, label: {
                Text("Present Security Settings")
            })
            
            AsyncButton(action: {
                await viewModel.performAction(.pressedSimulateTransactionNotification)
            }, label: {
                Text("Simulate Transaction Notification")
            })
        }
        .navigationTitle("Settings")
        .sheet(isPresented: $navigationState.accountSheetPresented) {
            NavigationStack(path: $navigationState.accountSettingsRoutes) {
                List {
                    AsyncButton(action: {
                        navigationState.accountSettingsRoutes.append(.detail)
                    }, label: {
                        Text("Details view")
                    })

                }
                .navigationTitle("Home")
                .navigationDestination(for: AccountSettingsRoute.self) { $0 }
            }
            .task {
                navigationState.restore()
            }
        }
    }
}
