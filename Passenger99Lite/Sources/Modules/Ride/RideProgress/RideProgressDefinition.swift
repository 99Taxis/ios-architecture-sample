import Foundation

protocol RideProgressPresenterType: Presenter {
    func viewDidLoad()
}

protocol RideProgressViewType: class {
    func show(viewModel: RideProgressViewModel)
    func didFinishProgress()
}
