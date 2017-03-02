import Foundation
import RxSwift

final class RideRepository: RideRepositoryType {
    
    lazy var rideProgressObservable: Observable<Float> = {
        return Observable<Float>.create { observer in
            let interval: TimeInterval = 0.4
            let timer = DispatchSource.makeTimerSource(queue: DispatchQueue.global())
            timer.scheduleRepeating(deadline: DispatchTime.now() + interval, interval: interval)
            
            let cancel = Disposables.create {
                print("Disposed")
                timer.cancel()
            }
            
            var next: Float = 0
            timer.setEventHandler {
                if cancel.isDisposed {
                    return
                }
                if next >= 1 {
                    observer.onNext(next)
                    observer.onCompleted()
                }
                else {
                    observer.onNext(next)
                }
                next += 0.1
            }
            timer.resume()
            return cancel
        }
    }()
    
    func requestTips() -> Observable<[Tip]> {
        let tips = [
            Tip(value: 0.0, description: "😡"),
            Tip(value: 2.0, description: "🙂"),
            Tip(value: 5.0, description: "😎"),
            Tip(value: 10.0, description: "🤑")
        ]
        
        return Observable<[Tip]>.just(tips)
    }
}
