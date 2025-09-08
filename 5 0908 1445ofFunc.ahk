BoundFunc := FuncObj.Bind(Param1, Param2, ...) 

Binds parameters to the function. 

https://www.autohotkey.com/docs/v2/lib/Func.htm#Bind 

---

This method returns a BoundFunc object.

BoundFunc Object
Acts like a function, but just passes predefined parameters to another function.

There are two ways that BoundFunc objects can be created:

By calling the Func.Bind method, which binds parameter values to a function.
By calling the ObjBindMethod function, which binds parameter values and a method name to a target object.
BoundFunc objects can be called as shown in the example below. When the BoundFunc is called, it calls the function or method to which it is bound, passing a combination of bound parameters and the caller's parameters. Unbound parameter positions are assigned positions from the caller's parameter list, left to right. For example:

fn := RealFn.Bind(1)  ; Bind first parameter only
fn(2)      ; Shows "1, 2"
fn.Call(3) ; Shows "1, 3"

fn := RealFn.Bind( , 1)  ; Bind second parameter only
fn(2, 0)   ; Shows "2, 1, 0"
fn.Call(3) ; Shows "3, 1"
fn(, 4)    ; Error: 'a' was omitted

RealFn(a, b, c?) {
    MsgBox a ", " b (IsSet(c) ? ", " c : "")
}
