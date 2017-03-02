import Foundation
import RxSwift

final class RideCompletionPresenter: RideCompletionPresenterType {
    
    weak var view: RideCompletionViewType?
    
    fileprivate let repository: RideRepositoryType
    fileprivate let disposeBag = DisposeBag()
    fileprivate var viewModel: RideCompletionViewModel? {
        didSet{
            guard let model = viewModel else { return }
            self.view?.show(viewModel: model)
        }
    }
    
    init(repository: RideRepositoryType) {
        self.repository = repository
    }
    
    func viewDidLoad() {
        self.repository.requestTips()
            .subscribe(
                onNext: { tips in
                    self.viewModel = RideCompletionViewModel(tips: tips, selectedIndex: 0)
                })
            .addDisposableTo(disposeBag)
    }
    
    func selectedTipAt(index: Int) {
        self.viewModel = self.viewModel?.viewModelWith(selectedIndex: index)
    }
}
