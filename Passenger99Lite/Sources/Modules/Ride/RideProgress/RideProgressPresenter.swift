import Foundation
import RxSwift

final class RideProgressPresenter: RideProgressPresenterType {
    
    weak var view: RideProgressViewType?
    
    fileprivate let repository: RideRepositoryType
    fileprivate let disposeBag = DisposeBag()
    fileprivate var viewModel = RideProgressViewModel() {
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
        self.startListeningToRideUpdates()
        self.view?.show(viewModel: self.viewModel)
    }
}

extension RideProgressPresenter {
    
    fileprivate func startListeningToRideUpdates() {
        self.repository.rideProgressObservable
            .observeOn(MainScheduler.instance)
            .subscribe(
                onNext: { [weak self] (progress) in
                    if let weakSelf = self {
                        weakSelf.viewModel = weakSelf.viewModel.viewModelWith(progress: progress)
                    }
                },
                onCompleted: { [weak self] in
                    if let weakSelf = self {
                        weakSelf.view?.didFinishProgress()
                        weakSelf.view?.show(viewModel: weakSelf.viewModel)
                    }
                })
            .addDisposableTo(self.disposeBag)
    }
}
