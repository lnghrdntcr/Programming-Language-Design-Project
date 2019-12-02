open List 
type ident = string
 type arg = Reg of ident | FnName of ident 
type instr =  Fpext of arg list | Fadd of arg list | Add of arg list | Call of arg list | Mul of arg list | Sitofp of arg list | Store of arg list | Icmp of arg list | Ret of arg list | Alloca of arg list | Br of arg list | Load of arg list
type func_def = Function of ident * ident * (instr list)
let init_fn_map = fun x -> if x == "main" then Some main else None
let update fn_map id fn = fun x -> if x == id then Some fn else fn_map id
Function("i32", "main", [Alloca([Reg("%1")]);Alloca([Reg("%2")]);Alloca([Reg("%3")]);Alloca([Reg("%4")]);Store([Reg("%1")]);Store([Reg("%2")]);Store([Reg("%3")]);Br([Reg("%5")]);([]);Load([Reg("%6");Reg("%3")]);Icmp([Reg("%7");Reg("%6")]);Br([Reg("%7");Reg("%8");Reg("%16")]);([]);Load([Reg("%9");Reg("%3")]);Sitofp([Reg("%10");Reg("%9")]);Load([Reg("%11");Reg("%2")]);Fadd([Reg("%12");Reg("%11");Reg("%10")]);Store([Reg("%12");Reg("%2")]);Br([Reg("%13")]);([]);Load([Reg("%14");Reg("%3")]);Add([Reg("%15");Reg("%14")]);Store([Reg("%15");Reg("%3")]);Br([Reg("%5")]);([]);Store([Reg("%4")]);Br([Reg("%17")]);([]);Load([Reg("%18");Reg("%4")]);Icmp([Reg("%19");Reg("%18")]);Br([Reg("%19");Reg("%20");Reg("%30")]);([]);Load([Reg("%21");Reg("%4")]);Load([Reg("%22");Reg("%4")]);Mul([Reg("%23");Reg("%21");Reg("%22")]);Sitofp([Reg("%24");Reg("%23")]);Load([Reg("%25");Reg("%2")]);Fadd([Reg("%26");Reg("%25");Reg("%24")]);Store([Reg("%26");Reg("%2")]);Br([Reg("%27")]);([]);Load([Reg("%28");Reg("%4")]);Add([Reg("%29");Reg("%28")]);Store([Reg("%29");Reg("%4")]);Br([Reg("%17")]);([]);Load([Reg("%31");Reg("%2")]);Fpext([Reg("%32");Reg("%31")]);Call([FnName("printf");Reg("%33");Reg("%32")]);Ret([])])