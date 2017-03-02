import Foundation
import Nimble_Snapshots
import Nimble
import Quick

@testable import Passenger99Lite

class RideProgressViewLayoutTests: QuickSpec {
    override func spec() {
        var viewLayout: RideProgressViewLayout!
        
        describe("Pixel perfect Ride Progress") {
            beforeEach {
                viewLayout = RideProgressViewLayout.loadFromNib()
            }
            it("has unfinished progress") {
                let viewModel = RideProgressViewModel(progress: 0.4)
                viewLayout.show(viewModel: viewModel)
                expect(viewLayout).to(haveValidSnapshot())
            }
            it("has progress completed") {
                let viewModel = RideProgressViewModel(progress: 1)
                viewLayout.show(viewModel: viewModel)
                expect(viewLayout).to(haveValidSnapshot())
            }
        }
    }
}
