import Foundation


protocol RideCompletionViewType: class {
    func show(viewModel: RideCompletionViewModel)
}


class RideCompletionPresenter: RideCompletionPresenterType {
    
    fileprivate let repository: RideRepositoryType
    fileprivate weak var view: RideCompletionViewType?
    
    init(repository: RideRepositoryType) {
        self.repository = repository
    }
    
    func viewDidLoad() {
        
    }
}
