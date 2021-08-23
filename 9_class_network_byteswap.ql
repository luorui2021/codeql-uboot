import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    // TODO: replace <class> and <var>
    exists(MacroInvocation mi |
        mi.getExpr() = this and
        mi.getMacro().getName().regexpMatch("ntoh(s|l|ll)")
    )
  }
}

from NetworkByteSwap n
select n, "Network byte swap"

// ************************************************************ come from step-8
// import cpp

// from MacroInvocation mi, Macro m 
// where
//     mi.getMacro() = m and
//     m.getName().regexpMatch("ntoh(s|l|ll)")
// select mi.getExpr()

// ************************************************************ Please ignore
// import cpp

// from IfStmt ifstmt, Block block
// where ifstmt.getThen() = block and
//   block.getNumStmt() = 0 and
//   not ifstmt.hasElse()
// select ifstmt, "This 'if' statement is redundant."
