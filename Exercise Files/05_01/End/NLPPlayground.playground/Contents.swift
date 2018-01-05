//: Playground - noun: a place where people can play

import UIKit

let text = "Tim Cook is the CEO of Apple Inc. He was recently seen in Cupertino. He is a big fan of Martin Luther King"

let tagger = NSLinguisticTagger(tagSchemes: [NSLinguisticTagScheme.nameType], options: 0)

tagger.string = text

let range = NSMakeRange(0, text.utf16.count)

let options:NSLinguisticTagger.Options = [.omitPunctuation, .omitWhitespace, .joinNames]

let tags:[NSLinguisticTag] = [.personalName, .placeName, .organizationName]


var names:[String] = []
var places:[String] = []
var orgs:[String] = []


tagger.enumerateTags(in: range, unit: .word, scheme: .nameType, options: options){
    tag, tokenRange, stop in
    
    guard let tag = tag else {return}
    let token = (text as NSString).substring(with: tokenRange)
    
    switch tag {
    case .personalName: names.append(token)
    case .placeName: places.append(token)
    case .organizationName: orgs.append(token)
    default:break
        
    }

}
