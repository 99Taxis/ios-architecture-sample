import Quick
import Nimble
@testable import Passenger99Lite

class RideCoordinatorTests: QuickSpec {
 
    override func spec() {
        let window = UIWindow()
        let rideCoordinator = RideCoordinator(window: window)
        
        describe("Ride coordinator initialization") {
            it("should instantiate ride progress as root view controller") {
                rideCoordinator.start()
                expect(window.rootViewController).to(beAKindOf(RideProgressViewController.self))
            }
        }
        
        describe("Ride coordinator flow") {
            it("should navigate to completion ride screen when wants to show tips") {

                let repository = RideRepository()
                let presenter = RideProgressPresenter(repository: repository)
                let rideProgressViewController = RideProgressViewController(presenter: presenter)

                rideCoordinator.wantsToShowRideCompletion(rideProgressController: rideProgressViewController)
                expect(rideCoordinator.currentViewController).to(beAKindOf(RideCompletionViewController.self))
            }
        }
    }
}
