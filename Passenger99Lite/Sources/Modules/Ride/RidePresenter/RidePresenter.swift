import Foundation
import RxSwift

protocol RideViewType: class {
    func show(viewModel: RideViewModel)
}

class RidePresenter: RidePresenterType {
    
    weak var view: RideViewType?
    
    fileprivate let repository: RideRepositoryType
    fileprivate let disposeBag = DisposeBag()
    fileprivate var viewModel = RideViewModel(progress: 0) {
        didSet(oldValue) {
            if viewModel != oldValue {
                self.view?.show(viewModel: self.viewModel)
            }
        }
    }
    
    init(repository: RideRepositoryType) {
        self.repository = repository
    }
    
    func viewDidLoad() {
        self.listenToRideUpdates()
        self.view?.show(viewModel: RideViewModel(progress:0))
    }
}

extension RidePresenter {
    
    fileprivate func listenToRideUpdates() {
        self.repository.rideObservable
            .throttle(1, scheduler: MainScheduler.instance)
            .observeOn(MainScheduler.instance)
            .subscribe(
                onNext: { [weak self] (progress) in
                    self?.viewModel = RideViewModel(progress: progress)
                },
                onCompleted: {
                    
                })
            .addDisposableTo(self.disposeBag)
    }
}
