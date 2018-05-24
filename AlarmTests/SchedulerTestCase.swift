
import XCTest
@testable import Alarm_ios_swift


class SchedulerTestCase: XCTestCase {
    
    let scheduler = Scheduler()
    
    override func setUp() {
        super.setUp()
       
    }
    
    override func tearDown() {
        
        super.tearDown()
    }
    
    func testSetupNotificationSettings() {
        let settings = scheduler.setupNotificationSettings()
        XCTAssert((UInt8(settings.types.rawValue) & UInt8(UIUserNotificationType.alert.rawValue)) == UInt8(UIUserNotificationType.alert.rawValue))
        XCTAssert((UInt8(settings.types.rawValue) & UInt8(UIUserNotificationType.sound.rawValue)) == UInt8(UIUserNotificationType.sound.rawValue))
    }
    
    func testPerformanceExample() {
       
        self.measure {
            
        }
    }
    
}
