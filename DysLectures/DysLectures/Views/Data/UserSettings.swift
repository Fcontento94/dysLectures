import SwiftUI
import Combine

class TestViewModel : ObservableObject {
    private static let userDefaultTextKey = "textKey"
    @Published var text = UserDefaults.standard.string(forKey: TestViewModel.userDefaultTextKey) ?? ""
    private var canc: AnyCancellable!

    init() {
        canc = $text.debounce(for: 0.2, scheduler: DispatchQueue.main).sink { newText in
            UserDefaults.standard.set(newText, forKey: TestViewModel.userDefaultTextKey)
        }
    }

    deinit {
        canc.cancel()
    }
}

struct ContentView: View {
    @ObservedObject var viewModel = TestViewModel()

    var body: some View {
        TextField("Type something...", text: $viewModel.text)
    }
}



struct TestViewModel_Previews: PreviewProvider {
    static var previews: some View {
        TestViewModel()
    }
}
