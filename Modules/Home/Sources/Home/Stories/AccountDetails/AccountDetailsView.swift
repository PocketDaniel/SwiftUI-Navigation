import SwiftUI
import Factory
import Core

struct AccountDetailsView: View {
    
    @ObservedObject private var viewModel: AccountDetailsViewModel = Container.shared.accountDetailsViewModel()

    var body: some View {
        VStack(spacing: 24) {
            AsyncButton(action: {
                await viewModel.performAction(.pressedTransactionDetails)
            }, label: {
                Text("Present Transaction Details")
            })
        }
        .navigationTitle("Account Details")
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                AsyncButton {
                    await viewModel.performAction(.pressedBack)
                } label: {
                    HStack {
                        Image(systemName: "chevron.backward")
                        Text("Back")
                    }
                }
            }
        }
    }
}
