import Foundation
import RxSwift


protocol RideCompletionViewType: class {
    func show(viewModel: RideCompletionViewModel)
}


class RideCompletionPresenter: RideCompletionPresenterType {
    
    fileprivate let repository: RideRepositoryType
    weak var view: RideCompletionViewType?
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
        self.repository.requestTipValues()
            .subscribe(onNext: { tips in
                self.viewModel = RideCompletionViewModel(tips: tips, selectedIndex: 0)
        }).addDisposableTo(disposeBag)
    }
    
    func selectedTipAt(index: Int) {
        self.viewModel = self.viewModel?.viewModelWith(selectedIndex: index)
    }
}
