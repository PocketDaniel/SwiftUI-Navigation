import SwiftUI
import Factory
import Core

struct AccountSettingsView: View {
    
    @ObservedObject private var viewModel: AccountSettingsViewModel = Container.shared.accountSettingsViewModel()
    
    var body: some View {
        VStack(spacing: 24) {
            AsyncButton(action: {
                await viewModel.performAction(.pressedEmailSettings)
            }, label: {
                Text("Present Email Settings")
            })
        }
        .navigationTitle("Account Settings")
    }
}
