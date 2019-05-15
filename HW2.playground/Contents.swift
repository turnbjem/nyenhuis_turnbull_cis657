import UIKit

//HW 2 Problem 1
var authors: Dictionary<String,Float> = ["Mark Twain":8.9,"Nathaniel Hawthorne":5.1,"John Steinbeck":2.3,"C.S. Lewis":9.9,"Jon Krakaur":6.1]
var scoretotal: Float = 0.0;
var scoreave: Float = 0.0;

var authorvalues = Array(authors.values)
var i: Int = 0;

while(i<authors.count){
    scoretotal += authorvalues[i]
    scoreave = scoretotal/Float (authors.count)
    i += 1
}
print("Average score of authors is \(scoreave)")

//HW 2 Problem 2
if(scoreave<5.0){
    print("Low")
}
else if(scoreave>=5.0 && scoreave<7){
    print("Moderate")
}
else{
    print("High")
}

//HW 2 Problem 3
var count: Int = 0
var strOut = ""

switch count {
case 0:
    strOut = "none"
case 1...3:
    strOut = "a few"
case 4...9:
    strOut = "several"
case 10...99:
    strOut = "tens of"
case 100...999:
    strOut = "hundreds of"
case 1000...9999:
    strOut = "thousands of"
case _ where count > 999999:
    strOut = "millions of"
default:
    strOut = "none"
}

//HW 2 Problem 4
func verbalizeNumber(inputnum: Int) -> String {
    switch inputnum {
    case 0:
        strOut = "none"
    case 1...3:
        strOut = "a few"
    case 4...9:
        strOut = "several"
    case 10...99:
        strOut = "tens of"
    case 100...999:
        strOut = "hundreds of"
    case 1000...9999:
        strOut = "thousands of"
    default:
        strOut = "millions of"
    }
    return strOut
}
//HW 2 Problem 5
for number in stride(from:1, to:100, by: 10){
    print(number,"is considered",verbalizeNumber(inputnum: number),"records")
}

//HW 2 Problem 6
func verbalizeAndShoutNumber(inputnum: Int) -> String {
    switch inputnum {
    case 0:
        strOut = "none"
    case 1...3:
        strOut = "a few"
    case 4...9:
        strOut = "several"
    case 10...99:
        strOut = "tens of"
    case 100...999:
        strOut = "hundreds of"
    case 1000...9999:
        strOut = "thousands of"
    default:
        strOut = "millions of"
    }
    return strOut.uppercased()
}

//HW 2 Problem 7
func expressNumbersElegantly(max: Int, verbalizeFunction: (Int) -> String) -> String{
    var returnstr = ""
    for number in stride(from:1, to:max, by: 10){
        returnstr += "\(number) is considered \(verbalizeFunction(number))\n"
    }
    
    return returnstr
}

var verbalizeVar: (Int) -> String = verbalizeNumber
var ElegantResult = expressNumbersElegantly(max:200,verbalizeFunction: verbalizeVar);
print(ElegantResult)

verbalizeVar = verbalizeAndShoutNumber
ElegantResult = expressNumbersElegantly(max:200,verbalizeFunction: verbalizeVar);
print(ElegantResult)

//HW 2 Problem 8
func expressNumbersVeryElegantly(MaxValue max: Int, DesiredFunction verbalizeFunction: (Int) -> String) -> String{
    var returnstr = ""
    for number in stride(from:1, to:max, by: 10){
        returnstr += "\(number) is considered \(verbalizeFunction(number)) "
    }
    
    return returnstr
}

verbalizeVar = verbalizeAndShoutNumber
ElegantResult = expressNumbersVeryElegantly(MaxValue:200, DesiredFunction: verbalizeVar);
print(ElegantResult)

//HW 2 Problem 9
var famousLastWords = ["the cow jumped over the moon.","three score and four years ago","lets nuc 'em Joe!","ah, there is just something about Swift"]
var FamousLastWords = famousLastWords.map({ (phrase: String) -> String in
    ""+phrase.prefix(1).uppercased() + phrase.dropFirst()
})
print(famousLastWords)
print(FamousLastWords)

//HW 2 Problem 10
func showProf(s: String) {
    print("(",s,") is read as unwrapped")
}
var unwrappedstr : String! = "Short not clever"

showProf(s: unwrappedstr)


