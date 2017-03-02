import Foundation

protocol RideProgressPresenterType: Presenter {
    
}

protocol RideProgressViewType: class {
    func show(viewModel: RideProgressViewModel)
    func didFinishProgress()
}
