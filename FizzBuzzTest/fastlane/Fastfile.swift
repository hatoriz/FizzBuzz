// This file contains the fastlane.tools configuration
// You can find the documentation at https://docs.fastlane.tools
//
// For a list of all available actions, check out
//
//     https://docs.fastlane.tools/actions
//

import Foundation

class Fastfile: LaneFile {
//    default_paltform: ios
//
//    lane :tests do
//    run_tests(workspace: "FizzBuzz.xcworkspace",
//    devices: ["iPhone 8", "iPhone X"],
//    scheme: "FizzBuzz")
//    end
    
    func betaLane() {
        desc("Submit a new Beta Build to Apple TestFlight. This will also make sure the profile is up to date")
        
        syncCodeSigning(gitUrl: "URL/for/your/git/repo", appIdentifier: [appIdentifier], username: appleID)
        // Build your app - more options available
        buildIosApp(scheme: "SchemeName")
        uploadToTestflight(username: appleID)
        // You can also use other beta testing services here (run `fastlane actions`)
    }
}
