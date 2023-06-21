import SwiftUI
import Factory
import Core

struct SettingsView: View {
    
    @ObservedObject private var viewModel: SettingsViewModel = Container.shared.settingsViewModel()
    
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
    }
}
