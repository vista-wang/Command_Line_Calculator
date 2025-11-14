//
//  funcs.swift
//  Command_Line_Calculator
//
//  Created by Ethan Wang    on 11/13/25.
//

func prt(prt:String){
    if vars[b] == nil{
        print("error:02")
    }else{
        print(vars[b]!)
    }
}

func set(a:Int, b:String){
    vars[b] = a

}

func add(a:Int, b:String){
    if vars[b] == nil{
        print("error:02")
    }else{
        var z:Int! = vars[b]
        z = z + a
        vars[b] = z
    }
}
