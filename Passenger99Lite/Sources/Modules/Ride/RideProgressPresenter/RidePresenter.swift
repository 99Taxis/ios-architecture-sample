import Foundation
import RxSwift

protocol RideProgressViewType: class {
    func show(viewModel: RideProgressViewModel)
}

class RidePresenter: RideProgressPresenterType {
    
    weak var view: RideProgressViewType?
    
    fileprivate let repository: RideProgressRepositoryType
    fileprivate let disposeBag = DisposeBag()
    fileprivate var viewModel = RideProgressViewModel(progress: 0) {
        didSet(oldValue) {
            if viewModel != oldValue {
                self.view?.show(viewModel: self.viewModel)
            }
        }
    }
    
    init(repository: RideProgressRepositoryType) {
        self.repository = repository
    }
    
    func viewDidLoad() {
        self.listenToRideUpdates()
        self.view?.show(viewModel: RideProgressViewModel(progress:0))
    }
}

extension RidePresenter {
    
    fileprivate func listenToRideUpdates() {
        self.repository.rideObservable
            .throttle(1, scheduler: MainScheduler.instance)
            .observeOn(MainScheduler.instance)
            .subscribe(
                onNext: { [weak self] (progress) in
                    self?.viewModel = RideProgressViewModel(progress: progress)
                },
                onCompleted: {
                    
                })
            .addDisposableTo(self.disposeBag)
    }
}
