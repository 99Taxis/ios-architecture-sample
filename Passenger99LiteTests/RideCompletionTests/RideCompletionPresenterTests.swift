import Foundation
import Nimble
import Quick
import RxSwift
import Cuckoo

@testable import Passenger99Lite

class RideCompletionPresenterTests: QuickSpec {
    
    let tips = [
        Tip(value: 0.0, description: "😡"),
        Tip(value: 2.0, description: "🙂")
    ]
    
    override func spec() {
        var viewMock: MockRideCompletionViewType!
        let repositoryStub: RideRepositoryType = RideRepositoryTypeStub()
        var presenter: RideCompletionPresenter?
        self.registerStubs()
        
        beforeEach {
            viewMock = MockRideCompletionViewType().spy(on: RideCompletionViewTypeStub())
            presenter = RideCompletionPresenter(repository: repositoryStub)
            presenter?.view = viewMock
        }
        
        describe("on presenter view did load") {
            it("should call method show on view") {
                let viewModel = RideCompletionViewModel(tips: self.tips, selectedIndex: 0)
                presenter?.viewDidLoad()
                verify(viewMock).show(viewModel: equal(to: viewModel))
            }
        }
        
        describe("on selected tip value") {
            beforeEach {
                presenter?.viewDidLoad()
            }
            it("should change view model with selected index") {
                let viewModel = RideCompletionViewModel(tips: self.tips, selectedIndex: 1)
                presenter?.selectedTipAt(index: 1)
                verify(viewMock).show(viewModel: equal(to: viewModel))
            }
        }
    }
    
    
    func registerStubs() {
        DefaultValueRegistry.register(value: Observable<[Tip]>.just(tips), forType: Observable<[Tip]>.self)
        DefaultValueRegistry.register(value: Observable<Float>.just(0.4), forType: Observable<Float>.self)
    }
}

