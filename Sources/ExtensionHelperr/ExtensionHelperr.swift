import SwiftUI

@available(macOS 10.15, *)
@available(iOS 14.0, *)
public struct ExtensionHelperr: View {
    public init() {
    }
    
    public var body: some View {
        VStack(spacing: 15) {
            Image(packageResource: "imges_one", ofType: "png")
                .resizable()
                .frame(width: 250, height: 250)
            Text("This is my framework").font(.system(size: 20, weight: .bold, design: .default)).fixedSize(horizontal: false, vertical: true)
        }
        Spacer()
        
    }
}
