// MARK: - Mocks generated from file: Passenger99Lite/Sources/Protocols/Presenter.swift at 2017-03-02 20:06:41 +0000


import Cuckoo
@testable import Passenger99Lite

import Foundation

class MockPresenter: Presenter, Cuckoo.Mock {
    typealias MocksType = Presenter
    typealias Stubbing = __StubbingProxy_Presenter
    typealias Verification = __VerificationProxy_Presenter
    let manager = Cuckoo.MockManager()
    
    private var observed: Presenter?
    
    func spy(on victim: Presenter) -> Self {
        observed = victim
        return self
    }
    
    func viewDidLoad() {
        return manager.call("viewDidLoad()", parameters: (), original: observed.map { o in return { () in o.viewDidLoad() } })
    }
    
    struct __StubbingProxy_Presenter: Cuckoo.StubbingProxy {
        private let manager: Cuckoo.MockManager
        
        init(manager: Cuckoo.MockManager) {
            self.manager = manager
        }
        
        func viewDidLoad() -> Cuckoo.StubNoReturnFunction<()> {
            return Cuckoo.StubNoReturnFunction(stub: manager.createStub("viewDidLoad()", parameterMatchers: []))
        }
    }
    
    struct __VerificationProxy_Presenter: Cuckoo.VerificationProxy {
        private let manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
        
        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
        
        @discardableResult
        func viewDidLoad() -> Cuckoo.__DoNotUse<Void> {
            return manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: [] as [Cuckoo.ParameterMatcher<Void>], sourceLocation: sourceLocation)
        }
    }
}

class PresenterStub: Presenter {
    
    func viewDidLoad() {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
}

// MARK: - Mocks generated from file: Passenger99Lite/Sources/Modules/Ride/RideCompletion/RideCompletionDefinition.swift at 2017-03-02 20:06:41 +0000


import Cuckoo
@testable import Passenger99Lite

import Foundation

class MockRideCompletionPresenterType: RideCompletionPresenterType, Cuckoo.Mock {
    typealias MocksType = RideCompletionPresenterType
    typealias Stubbing = __StubbingProxy_RideCompletionPresenterType
    typealias Verification = __VerificationProxy_RideCompletionPresenterType
    let manager = Cuckoo.MockManager()
    
    private var observed: RideCompletionPresenterType?
    
    func spy(on victim: RideCompletionPresenterType) -> Self {
        observed = victim
        return self
    }
    
    func selectedTipAt(index: Int) {
        return manager.call("selectedTipAt(index: Int)", parameters: (index), original: observed.map { o in return { (index: Int) in o.selectedTipAt(index: index) } })
    }
    
    func viewDidLoad() {
        return manager.call("viewDidLoad()", parameters: (), original: observed.map { o in return { () in o.viewDidLoad() } })
    }
    
    struct __StubbingProxy_RideCompletionPresenterType: Cuckoo.StubbingProxy {
        private let manager: Cuckoo.MockManager
        
        init(manager: Cuckoo.MockManager) {
            self.manager = manager
        }
        
        func selectedTipAt<M1: Cuckoo.Matchable>(index: M1) -> Cuckoo.StubNoReturnFunction<(Int)> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
            return Cuckoo.StubNoReturnFunction(stub: manager.createStub("selectedTipAt(index: Int)", parameterMatchers: matchers))
        }
        
        func viewDidLoad() -> Cuckoo.StubNoReturnFunction<()> {
            return Cuckoo.StubNoReturnFunction(stub: manager.createStub("viewDidLoad()", parameterMatchers: []))
        }
    }
    
    struct __VerificationProxy_RideCompletionPresenterType: Cuckoo.VerificationProxy {
        private let manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
        
        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
        
        @discardableResult
        func selectedTipAt<M1: Cuckoo.Matchable>(index: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
            return manager.verify("selectedTipAt(index: Int)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func viewDidLoad() -> Cuckoo.__DoNotUse<Void> {
            return manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: [] as [Cuckoo.ParameterMatcher<Void>], sourceLocation: sourceLocation)
        }
    }
}

class RideCompletionPresenterTypeStub: RideCompletionPresenterType {
    
    func selectedTipAt(index: Int) {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    func viewDidLoad() {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
}

class MockRideCompletionViewType: RideCompletionViewType, Cuckoo.Mock {
    typealias MocksType = RideCompletionViewType
    typealias Stubbing = __StubbingProxy_RideCompletionViewType
    typealias Verification = __VerificationProxy_RideCompletionViewType
    let manager = Cuckoo.MockManager()
    
    private var observed: RideCompletionViewType?
    
    func spy(on victim: RideCompletionViewType) -> Self {
        observed = victim
        return self
    }
    
    func show(viewModel: RideCompletionViewModel) {
        return manager.call("show(viewModel: RideCompletionViewModel)", parameters: (viewModel), original: observed.map { o in return { (viewModel: RideCompletionViewModel) in o.show(viewModel: viewModel) } })
    }
    
    struct __StubbingProxy_RideCompletionViewType: Cuckoo.StubbingProxy {
        private let manager: Cuckoo.MockManager
        
        init(manager: Cuckoo.MockManager) {
            self.manager = manager
        }
        
        func show<M1: Cuckoo.Matchable>(viewModel: M1) -> Cuckoo.StubNoReturnFunction<(RideCompletionViewModel)> where M1.MatchedType == RideCompletionViewModel {
            let matchers: [Cuckoo.ParameterMatcher<(RideCompletionViewModel)>] = [wrap(matchable: viewModel) { $0 }]
            return Cuckoo.StubNoReturnFunction(stub: manager.createStub("show(viewModel: RideCompletionViewModel)", parameterMatchers: matchers))
        }
    }
    
    struct __VerificationProxy_RideCompletionViewType: Cuckoo.VerificationProxy {
        private let manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
        
        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
        
        @discardableResult
        func show<M1: Cuckoo.Matchable>(viewModel: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == RideCompletionViewModel {
            let matchers: [Cuckoo.ParameterMatcher<(RideCompletionViewModel)>] = [wrap(matchable: viewModel) { $0 }]
            return manager.verify("show(viewModel: RideCompletionViewModel)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
    }
}

class RideCompletionViewTypeStub: RideCompletionViewType {
    
    func show(viewModel: RideCompletionViewModel) {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
}

// MARK: - Mocks generated from file: Passenger99Lite/Sources/Modules/Ride/RideRepository/RideRepositoryType.swift at 2017-03-02 20:06:41 +0000


import Cuckoo
@testable import Passenger99Lite

import Foundation
import RxSwift

class MockRideRepositoryType: RideRepositoryType, Cuckoo.Mock {
    typealias MocksType = RideRepositoryType
    typealias Stubbing = __StubbingProxy_RideRepositoryType
    typealias Verification = __VerificationProxy_RideRepositoryType
    let manager = Cuckoo.MockManager()
    
    private var observed: RideRepositoryType?
    
    func spy(on victim: RideRepositoryType) -> Self {
        observed = victim
        return self
    }
    
    var rideProgressObservable: Observable<Float> {
        get {
            return manager.getter("rideProgressObservable", original: observed.map { o in return { () -> Observable<Float> in o.rideProgressObservable } })
        }
    }
    
    func requestTips() -> Observable<[Tip]> {
        return manager.call("requestTips() -> Observable<[Tip]>", parameters: (), original: observed.map { o in return { () -> Observable<[Tip]> in o.requestTips() } })
    }
    
    struct __StubbingProxy_RideRepositoryType: Cuckoo.StubbingProxy {
        private let manager: Cuckoo.MockManager
        
        init(manager: Cuckoo.MockManager) {
            self.manager = manager
        }
        
        var rideProgressObservable: Cuckoo.ToBeStubbedReadOnlyProperty<Observable<Float>> {
            return Cuckoo.ToBeStubbedReadOnlyProperty(manager: manager, name: "rideProgressObservable")
        }
        
        func requestTips() -> Cuckoo.StubFunction<(), Observable<[Tip]>> {
            return Cuckoo.StubFunction(stub: manager.createStub("requestTips() -> Observable<[Tip]>", parameterMatchers: []))
        }
    }
    
    struct __VerificationProxy_RideRepositoryType: Cuckoo.VerificationProxy {
        private let manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
        
        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
        
        var rideProgressObservable: Cuckoo.VerifyReadOnlyProperty<Observable<Float>> {
            return Cuckoo.VerifyReadOnlyProperty(manager: manager, name: "rideProgressObservable", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func requestTips() -> Cuckoo.__DoNotUse<Observable<[Tip]>> {
            return manager.verify("requestTips() -> Observable<[Tip]>", callMatcher: callMatcher, parameterMatchers: [] as [Cuckoo.ParameterMatcher<Void>], sourceLocation: sourceLocation)
        }
    }
}

class RideRepositoryTypeStub: RideRepositoryType {
    
    var rideProgressObservable: Observable<Float> {
        get {
            return DefaultValueRegistry.defaultValue(for: (Observable<Float>).self)
        }
    }
    
    func requestTips() -> Observable<[Tip]> {
        return DefaultValueRegistry.defaultValue(for: (Observable<[Tip]>).self)
    }
}

// MARK: - Mocks generated from file: Passenger99Lite/Sources/Modules/Ride/RideProgress/RideProgressDefinition.swift at 2017-03-02 20:06:41 +0000


import Cuckoo
@testable import Passenger99Lite

import Foundation

class MockRideProgressPresenterType: RideProgressPresenterType, Cuckoo.Mock {
    typealias MocksType = RideProgressPresenterType
    typealias Stubbing = __StubbingProxy_RideProgressPresenterType
    typealias Verification = __VerificationProxy_RideProgressPresenterType
    let manager = Cuckoo.MockManager()
    
    private var observed: RideProgressPresenterType?
    
    func spy(on victim: RideProgressPresenterType) -> Self {
        observed = victim
        return self
    }
    
    func viewDidLoad() {
        return manager.call("viewDidLoad()", parameters: (), original: observed.map { o in return { () in o.viewDidLoad() } })
    }
    
    struct __StubbingProxy_RideProgressPresenterType: Cuckoo.StubbingProxy {
        private let manager: Cuckoo.MockManager
        
        init(manager: Cuckoo.MockManager) {
            self.manager = manager
        }
        
        func viewDidLoad() -> Cuckoo.StubNoReturnFunction<()> {
            return Cuckoo.StubNoReturnFunction(stub: manager.createStub("viewDidLoad()", parameterMatchers: []))
        }
    }
    
    struct __VerificationProxy_RideProgressPresenterType: Cuckoo.VerificationProxy {
        private let manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
        
        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
        
        @discardableResult
        func viewDidLoad() -> Cuckoo.__DoNotUse<Void> {
            return manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: [] as [Cuckoo.ParameterMatcher<Void>], sourceLocation: sourceLocation)
        }
    }
}

class RideProgressPresenterTypeStub: RideProgressPresenterType {
    
    func viewDidLoad() {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
}

class MockRideProgressViewType: RideProgressViewType, Cuckoo.Mock {
    typealias MocksType = RideProgressViewType
    typealias Stubbing = __StubbingProxy_RideProgressViewType
    typealias Verification = __VerificationProxy_RideProgressViewType
    let manager = Cuckoo.MockManager()
    
    private var observed: RideProgressViewType?
    
    func spy(on victim: RideProgressViewType) -> Self {
        observed = victim
        return self
    }
    
    func show(viewModel: RideProgressViewModel) {
        return manager.call("show(viewModel: RideProgressViewModel)", parameters: (viewModel), original: observed.map { o in return { (viewModel: RideProgressViewModel) in o.show(viewModel: viewModel) } })
    }
    
    func didFinishProgress() {
        return manager.call("didFinishProgress()", parameters: (), original: observed.map { o in return { () in o.didFinishProgress() } })
    }
    
    struct __StubbingProxy_RideProgressViewType: Cuckoo.StubbingProxy {
        private let manager: Cuckoo.MockManager
        
        init(manager: Cuckoo.MockManager) {
            self.manager = manager
        }
        
        func show<M1: Cuckoo.Matchable>(viewModel: M1) -> Cuckoo.StubNoReturnFunction<(RideProgressViewModel)> where M1.MatchedType == RideProgressViewModel {
            let matchers: [Cuckoo.ParameterMatcher<(RideProgressViewModel)>] = [wrap(matchable: viewModel) { $0 }]
            return Cuckoo.StubNoReturnFunction(stub: manager.createStub("show(viewModel: RideProgressViewModel)", parameterMatchers: matchers))
        }
        
        func didFinishProgress() -> Cuckoo.StubNoReturnFunction<()> {
            return Cuckoo.StubNoReturnFunction(stub: manager.createStub("didFinishProgress()", parameterMatchers: []))
        }
    }
    
    struct __VerificationProxy_RideProgressViewType: Cuckoo.VerificationProxy {
        private let manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
        
        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
        
        @discardableResult
        func show<M1: Cuckoo.Matchable>(viewModel: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == RideProgressViewModel {
            let matchers: [Cuckoo.ParameterMatcher<(RideProgressViewModel)>] = [wrap(matchable: viewModel) { $0 }]
            return manager.verify("show(viewModel: RideProgressViewModel)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func didFinishProgress() -> Cuckoo.__DoNotUse<Void> {
            return manager.verify("didFinishProgress()", callMatcher: callMatcher, parameterMatchers: [] as [Cuckoo.ParameterMatcher<Void>], sourceLocation: sourceLocation)
        }
    }
}

class RideProgressViewTypeStub: RideProgressViewType {
    
    func show(viewModel: RideProgressViewModel) {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    func didFinishProgress() {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
}
