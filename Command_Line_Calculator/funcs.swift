//
//  funcs.swift
//  Command_Line_Calculator
//
//  Created by Ethan Wang    on 11/13/25.
//

import Foundation

func prt(prt:String){
    if vars[prt] == nil{
        print("error:02")
    }else{
        print(String(vars[prt]!))
    }
    main()
}

func set(a:Int!, b:String!){
    vars[b] = a
    main()

}

func add(a:Int, b:String){
    if vars[b] == nil{
        print("error:02")
    }else{
        var z:Int! = vars[b]
        z = z + a
        vars[b] = z
    }
    main()
}

func min(a:Int, b:String){
    if vars[b] == nil{
        print("error:02")
    }else{
        var z:Int! = vars[b]
        z = z - a
        vars[b] = z
    }
    main()
}

func tim(a:Int, b:String){
    if vars[b] == nil{
        print("error:02")
    }else{
        var z:Int! = vars[b]
        z = z * a
        vars[b] = z
    }
    main()
}

func div(a:Int, b:String){
    if vars[b] == nil{
        print("error:02")
    }else{
        var z:Int! = vars[b]
        z = z / a
        vars[b] = z
    }
    main()
}

func powp(a:Int, b:String){
    if vars[b] == nil{
        print("error:02")
    }else{
        var i:Int = 0
        var z:Int! = vars[b]
        while i == a{
            z = z * vars[b]!
            i = i + 1
        }
        vars[b] = z
    }
    main()
}

func rot(a:Int, b:String){
    let c:Double
    if vars[b] == nil{
        print("error:02")
    }else{
        let z:Double! = Double(vars[b]!)
        if vars[b]! >= 0{
            c = pow(z, 1.0/Double(a))
            vars[b] = Int(c)
        }else if vars[b]! < 0 && a % 2 == 0{
            c = pow(-1*z, 1.0/Double(a))
            vars[b] = Int(c)
        }else{
            print("error:03")
        }
    }
    main()
}
