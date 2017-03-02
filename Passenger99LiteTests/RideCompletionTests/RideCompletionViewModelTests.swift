import Foundation
import Nimble
import Quick

@testable import Passenger99Lite

class RideCompletionViewModelTests: QuickSpec {
    override func spec() {
        var viewModel: RideCompletionViewModel?
        
        beforeEach {
            let tips = [
                Tip(value: 0.0, description: "😡"),
                Tip(value: 2.0, description: "🙂"),
                Tip(value: 5.0, description: "😎"),
                Tip(value: 10.0, description: "🤑")
            ]
            
            viewModel = RideCompletionViewModel(tips: tips, selectedIndex: 0)
        }
        
        describe("Get tip value") {
            it("should return formated value") {
                expect(viewModel?.getTipValueAt(index: 2)).to(equal("R$ 5.0"))
            }
            it("should contain correct tip count") {
                expect(viewModel?.count).to(equal(4))
            }
            it("should contain correct tip description") {
                expect(viewModel?.description).to(equal("😡"))
            }
        }
        
        describe("Copy values") {
            it("should copy tip values") {
                let newViewModel = viewModel?.viewModelWith(selectedIndex: 0)
                expect(newViewModel).to(equal(viewModel))
            }
            it("should copy tip values changing selectd index") {
                let newViewModel = viewModel?.viewModelWith(selectedIndex: 2)
                expect(newViewModel?.selectedIndex).to(equal(2))
            }
        }
    }
}
