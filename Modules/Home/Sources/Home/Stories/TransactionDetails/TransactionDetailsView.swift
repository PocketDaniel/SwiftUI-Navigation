import SwiftUI
import Factory
import Core

struct TransactionDetailsView: View {
    
    @ObservedObject private var viewModel: TransactionDetailsViewModel = Container.shared.transactionDetailsViewModel()
    
    var body: some View {
        VStack(spacing: 24) {
            AsyncButton(action: {
                await viewModel.performAction(.pressedPopToRoot)
            }, label: {
                Text("Pop To Root")
            })
        }
        .navigationTitle("Transaction Details")
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
