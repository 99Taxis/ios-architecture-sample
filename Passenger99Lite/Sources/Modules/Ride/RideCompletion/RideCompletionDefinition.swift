import Foundation

protocol RideCompletionPresenterType: Presenter {
    func selectedTipAt(index: Int)
    func viewDidLoad()
}

protocol RideCompletionViewType: class {
    func show(viewModel: RideCompletionViewModel)
}
