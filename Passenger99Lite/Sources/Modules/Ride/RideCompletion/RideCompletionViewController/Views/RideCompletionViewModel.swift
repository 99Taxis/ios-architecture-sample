
import Foundation

struct RideCompletionViewModel: Equatable {
    fileprivate let tips: [Tip]
    fileprivate let selectedIndex: Int
    var count: Int {
        return tips.count
    }
    
    var description: String {
        let tip = self.tips[self.selectedIndex]
        return tip.description
    }
    
    init(tips: [Tip], selectedIndex: Int) {
        self.tips = tips
        self.selectedIndex = selectedIndex
    }
    
    func getTipValueAt(index: Int) -> String {
        let tip = self.tips[index]
        return "R$ \(tip.value)"
    }
}

func ==(lhs: RideCompletionViewModel, rhs: RideCompletionViewModel) -> Bool {
    return true
}


extension RideCompletionViewModel {
    func viewModelWith(selectedIndex: Int) -> RideCompletionViewModel{
        return RideCompletionViewModel(tips: self.tips, selectedIndex: selectedIndex)
    }
}
