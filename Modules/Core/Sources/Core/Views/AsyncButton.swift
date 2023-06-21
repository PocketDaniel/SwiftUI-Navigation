import SwiftUI

public struct AsyncButton<Label: View>: View {
    
    private var action: () async -> Void
    private var label: Label
    
    @State private var isPerformingTask = false
    
    public init(
        action: @escaping () async -> Void,
        @ViewBuilder label: () -> Label
    ) {
        self.action = action
        self.label = label()
    }

    public var body: some View {
        Button(
            action: {
                isPerformingTask = true
            
                Task {
                    await action()
                    isPerformingTask = false
                }
            },
            label: {
                label
            }
        )
        .disabled(isPerformingTask)
    }
}
