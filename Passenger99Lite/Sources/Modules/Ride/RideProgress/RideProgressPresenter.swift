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
                    self?.viewModel = RideProgressViewModel(progress: progress)
                },
                onCompleted: { [weak self] in
                    self?.view?.didFinishProgress()
                })
            .addDisposableTo(self.disposeBag)
    }
}
