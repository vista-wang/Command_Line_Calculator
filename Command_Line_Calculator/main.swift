//
//  main.swift
//  Command_Line_Calculator
//
//  Created by Ethan Wang    on 11/10/25.
//

import Foundation
//import Cocoa

func command_switch(command:String, af:String, b:String){
    if Int(af) != nil{
        a = Int(af)
    }else{
        if vars[af] != nil{
            a = vars[af]
        }else{
            print("error:02")
        }
    }
    switch command {
    case "set":
        //let ai:Int! = Int(a)
        set(a:a, b:b)
    case "add":
        add(a:a, b:b)
    case "quit":
        break
    default:
        main()
    }
}

func main(){
    print("calculator", terminator:">")
    let input:String! = readLine()
    /*print("\(command ?? "incorrect command")")
    switch command {
        case "quit":
            break
        default:
            main()
    }*/
    let part = input.components(separatedBy: " ")
    if part.count == 3{
        let command = part[0]
        let af = part[1]
        let bf = part[2]
        command_switch(command:command, af:af, b:bf)
    }else if part.count == 2{
        let command = part[1]
        if command == "PRT"{
            prt(prt:part[2])
        }else{
            print("less input")
        }
    }else{
        print("incorrect input")
    }
}

let version = "InDev"
var vars:[String:Int] = [:]
var a:Int!
var b:String!
//let command:String
//let a:String
//let b:String
print("Welcome to use Command Line Calculator(version \(version)）! \n")
main()

