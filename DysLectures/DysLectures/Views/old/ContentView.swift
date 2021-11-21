import SwiftUI
import Combine




struct ContentView: View {
    @ObservedObject var userSettings = UserSettings()
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("PROFILE")) {
                    TextField("Username", text: $userSettings.username)
                }
            }
            .navigationBarTitle("Settings")
        }
    }
}
