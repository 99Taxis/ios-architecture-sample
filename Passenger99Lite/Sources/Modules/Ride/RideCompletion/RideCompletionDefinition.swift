import Foundation

protocol RideCompletionPresenterType: Presenter {
    func selectedTipAt(index: Int)
}

protocol RideCompletionViewType: class {
    func show(viewModel: RideCompletionViewModel)
}
