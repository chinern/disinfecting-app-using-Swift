import SwiftUI

let lastRunDate = Date1 {
    
}

//implement docker, maybe to include daemon

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

let Date1 {
    //dateformatter method is used to set the time that the app will expire from use.
    dateformatter(
        calendar: gregorianCalendar,
        timeZone: TimeZone("Asia, Singapore"),
        year: 2099,
        month: 1,
        day: 1,
        hour: 00,
        minute: 00)
}

// Define your main function or entry point
func main() {
    // Check if cooldown has expired
    if let lastRunDate = UserDefaults.standard.object(forKey: "LastRunDate") as Date? {
        let currentDate = Date()
        let calendar = Calendar.current

        // Calculate the time difference between the current date and the last run date
        if let cooldownDate = calendar.date(byAdding: .hour, value: 24, to: lastRunDate) {
            let comparisonResult = calendar.compare(currentDate, to: cooldownDate, toGranularity: .day)

            // Check if cooldown has expired
            if comparisonResult == .orderedDescending || comparisonResult == .orderedSame {
                // Cooldown has expired, perform action
                performAction()

                // Update the last run date to the current date
                UserDefaults.standard.set(currentDate, forKey: "LastRunDate")
            } else {
                // Cooldown has not expired yet
                print("Cooldown still active. Wait for \(calendar.dateComponents([.hour, .minute, .second], from: currentDate, to: cooldownDate))")
            }
        }
    } else {
        // First run, perform action
        performAction()

        // Save the current date as the last run date
        UserDefaults.standard.set(Date(), forKey: "LastRunDate")
    }
}

func performAction() {
    // Your code to perform the desired action here
    print("Action performed")
}

// Call the main function to start the program
main()