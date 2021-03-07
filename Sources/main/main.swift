@testable import sample

let namesArr: [String] = ["Fadi", "Timothy", "Derrick", "Omar", "Hiep", "Alexander", "Daniel", "Isela", "Jackqueline", "Bryan", "Nguyen", "Maxim", "Edgar", "Ahson", "Abdulkadir", "En-Kai", "Karla", "Panpan", "You", "Andrew", "Trevor", "Hoang", "Johnson", "Janelle", "Jet", "MD", "Albert", "Jiahui", "Alejandro", "Venkat"]

let testSample: Sample!

let sample = Sample()

print("countAvgNumLetters:\n", sample.countAvgNumLetters(names: namesArr),"\n")

print("groupNames:\n", sample.groupNames(names: namesArr),"\n")

print("countFirstLetterNames:\n", sample.countFirstLetterNames(names: namesArr),"\n")

print("immutabilityCountAvgNumLetters:\n", sample.immutabilityCountAvgNumLetters(names: namesArr),"\n")

print("immutabilityGroupNames:\n", sample.immutabilityGroupNames(names: namesArr),"\n")

//print("immutabilityCountFirstLetterNames:\n\n", testSample.immutabilityCountFirstLetterNames(names: namesArr),"\n")
