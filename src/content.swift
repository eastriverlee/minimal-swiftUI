import SwiftUI

let screenWidth: CGFloat = 320
let screenHeight: CGFloat = 320

struct Content: View {
    var body: some View {
        Text("hello world")
            .frame(width: screenWidth, height: screenHeight)
    }
}
