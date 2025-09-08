BoundFunc := FuncObj.Bind(Param1, Param2, ...)

https://www.autohotkey.com/docs/v2/lib/Func.htm#Bind 


| Feature          | Function object | Func object       |
|-----------------|----------------|-----------------|
| How you call     | `f(args)`      | `f.Call(args)`   |
| Has `.Name`      | ❌             | ✅               |
| Has `.IsBuiltIn` | ❌             | ✅               |
| Lightweight?     | ✅             | ❌               |
| How created      | Direct assign  | `Func("Name")`   |
