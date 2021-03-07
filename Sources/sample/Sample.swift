public final class Sample {
  
  func countAvgNumLetters(names: [String]) -> Double {
    if (names.count) == 0 {
      return 0
    }
    
    var sum = Double(0)
    for name in names {
      sum += Double(name.count)
    }
    
    return sum / Double(names.count)
  }

  func groupNames(names: [String]) -> Dictionary<Character, [String]>{
        var group = Dictionary<Character, [String]>()

    for name in names {
      let c = name.index(name.startIndex, offsetBy: 0)
      let char = name[c]
      var list = group[char] ?? []
      list.append(name)
      group[char] = list
    }
    
    return group
  }

  func countFirstLetterNames (names: [String]) -> Dictionary<Character, Int>{
    var group = Dictionary<Character, Int>()
    
    for name in names{
      let c = name.index(name.startIndex, offsetBy: 0)
      let char = name[c]

      var count = group[char] ?? 0
      count += 1
      group[char] = count
    }

    return group
  }

  func immutabilityCountAvgNumLetters (names: [String]) -> Double {
    if (names.count) == 0 {
      return 0
    }
    
    let sum = Double(names.reduce(0, {$0 + (Int($1.count))}))
    
    return sum / Double(names.count)
  }

  func immutabilityGroupNames (names: [String]) -> Dictionary<Character, [String]>{
  
    return Dictionary(grouping: names) {$0.first!}
  }

  // func immutabilityCountFirstLetterNames (names: [String]) -> Dictionary<Character, Int> {
  //   let group = names.reduce(into: [Character:Int]) {
    
  //   }
  //   return group
  // }

  //let namesArr: [String] = []
  //print(countAvgNumLetters(names: namesArr))
  //print(groupNames(names: namesArr))
  //print(countFirstLetterNames(names: namesArr))
  //print(immutabilityCountAvgNumLetters(names: namesArr))
  //print(immutabilityGroupNames(names: namesArr))
  //print(immutabilityCountFirstLetterNames(names: namesArr))

}

