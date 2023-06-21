import SwiftUI
import Factory
import Core

struct AccountListView: View {
    
    @ObservedObject private var viewModel: AccountListViewModel = Container.shared.accountListViewModel()
    
    var body: some View {
        VStack(spacing: 24) {
            AsyncButton(action: {
                await viewModel.performAction(.pressedAccountDetails)
            }, label: {
                Text("Present Account Details")
            })
        }
        .navigationTitle("Account List")
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
