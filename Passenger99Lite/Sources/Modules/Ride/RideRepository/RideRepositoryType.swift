import Foundation
import RxSwift

protocol RideRepositoryType {
    var rideObservable: Observable<Float> { get }
    func requestTipValues() -> Observable<[Tip]>
}
