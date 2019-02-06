import Foundation
import Basic
import Utility

/*
Subcommand

let parser = ArgumentParser(
    commandName: "CLI",
    usage: "uppercase --string=\"string to be uppercased\"",
    overview: "An example of a command line tool using Swift Package Manager and Utility package",
    seeAlso: "CLI uppercase -h"
)

let subparser = parser.add(subparser: "uppercase", overview: "Uppercase the string")

let strings = subparser.add(option: "--string", shortName: "-s", kind: String.self, usage: "The string that will be manipulated", completion: nil)

func parse(_ arguments: [String]) {
    do {
        let result = try parser.parse(arguments)
        guard let strings = result.get(strings) else {return}
        print(strings.uppercased())
    } catch {
        print(error)
    }
}

// The first argument specifies the path of the executable file
let arguments = Array(CommandLine.arguments.dropFirst())
parse(arguments)
*/

/*
Options and Positional Arguments
 
let parser = ArgumentParser(
    usage: "--uppercase --repeat=2 string to be manipulated",
    overview: "An example of a command line tool using Swift Package Manager and Utility package"
)

// <options>
let uppercase = parser.add(option: "--uppercase", shortName: "-u", kind: Bool.self, usage: "Uppercase the string", completion: nil)
let repeatString = parser.add(option: "--repeat", shortName: "-r", kind: Int.self, usage: "Repeat the string", completion: nil)

// [string ...]
let strings = parser.add(positional: "[string ...]", kind: [String].self, optional: true, usage: "A string of text", completion: nil)

func parse(_ arguments: [String]) {
    do {
        let result = try parser.parse(arguments)
        guard var strings = result.get(strings) else {return}
        
        if let u = result.get(uppercase), u {
            strings = strings.map({ (string) -> String in
                return string.uppercased()
            })
        }
        
        if let repeatString = result.get(repeatString) {
            strings = Array(repeating: strings, count: repeatString).flatMap{$0}
        }
        
        print(strings.joined(separator: " "))
    } catch {
        print(error)
    }
}

// The first argument specifies the path of the executable file
let arguments = Array(CommandLine.arguments.dropFirst())
parse(arguments)
*/
