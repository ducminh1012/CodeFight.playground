import Foundation

func firstDuplicate( a : [Int]) -> Int {
    var b = a
    for (i, value) in b.enumerated() {
        if (b[abs(b[i]) - 1] < 0) {
            return abs(b[i]);
        }
        else {
            b[abs(b[i]) - 1] = -b[abs(b[i]) - 1];
        }
    }
    
    return -1;
}

func firstNotRepeatingCharacter(s: String) -> Character {

    var occurrences = [Character: Int]()
    
    s.forEach { (char) in
        occurrences[char, default: 0] += 1
    }
    
    let dup = occurrences.filter { (char, occur) -> Bool in
        return occur == 1
    }
    
    if let d = dup.first {
        return d.key
    }
    
    return "_"
}

firstNotRepeatingCharacter(s: "abacabad")
