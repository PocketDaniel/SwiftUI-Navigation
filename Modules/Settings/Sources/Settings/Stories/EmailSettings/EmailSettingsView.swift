import SwiftUI
import Factory
import Core

struct EmailSettingsView: View {
    
    @ObservedObject private var viewModel: EmailSettingsViewModel = Container.shared.emailSettingsViewModel()
    
    var body: some View {
        VStack(spacing: 24) {
            AsyncButton(action: {
                await viewModel.performAction(.pressedPopOneScreen)
            }, label: {
                Text("Pop One Screen")
            })
            
            AsyncButton(action: {
                await viewModel.performAction(.pressedPopToRoot)
            }, label: {
                Text("Pop To Root")
            })
            
            AsyncButton(action: {
                await viewModel.performAction(.pressedSimulateTransactionNotificationOnTop)
            }, label: {
                Text("Simulate Transaction Notification (On Top)")
            })

            AsyncButton(action: {
                await viewModel.performAction(.pressedSimulateTransactionNotificationReroute)
            }, label: {
                Text("Simulate Transaction Notification (Reroute)")
            })
        }
        .navigationTitle("Email Settings")
    }
}
