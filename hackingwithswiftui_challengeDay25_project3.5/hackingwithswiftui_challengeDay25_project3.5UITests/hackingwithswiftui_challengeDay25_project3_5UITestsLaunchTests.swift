//
//  hackingwithswiftui_challengeDay25_project3_5UITestsLaunchTests.swift
//  hackingwithswiftui_challengeDay25_project3.5UITests
//
//  Created by Ali Syed on 2024-11-17.
//

import XCTest

final class hackingwithswiftui_challengeDay25_project3_5UITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
