# disinfecting-app-using-Swift
Concept: Ambient Light Sensor detects percentage of light that flows through normally and contrasts it against current values. If there is too much light being blocked (screen is dirty), it activate a push notification alert box to clean device. Daemon may be included. Using IOKIT IOS14.0

func userinterface1() {
    // Create the user interface and run the app
    let contentView = ContentView()
    SwiftUI.App
        .main()
        //active process
        .commands {
            Button("cleaning approve?") {
                static let ambientLightSensor: SRSensor
                class SRAmbientLightSample: NSObject
                var lux: Measurement<Unit
                Illuminance>
                for Measurement <= 0.80: 
                print(button(Cleaning to be done))
                print(alert("clean your phone")
                then print(alert("Cleaning approve!"))
            }
            
            
         } // Add menu commands if needed
        .body(content: contentView)

}
