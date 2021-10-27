<global>#D0ZBqh:[0x1071c4000->0x106ccc768, NoneGlobal, 64]: 16 instructions (0 16-bit instructions, 0 32-bit instructions, 5 instructions with metadata); 188 bytes (124 metadata bytes); 1 parameter(s); 16 callee register(s); 6 variable(s); scope at loc4

bb#1
[   0] enter              
[   1] get_scope          dst:loc4
[   3] mov                dst:loc5, src:loc4
[   6] check_traps        
[   7] new_func           dst:loc6, scope:loc4, functionDecl:0
[  11] resolve_scope      dst:loc7, scope:loc4, var:0, resolveType:GlobalProperty, localScopeDepth:0
[  18] mov                dst:loc8, src:loc7
[  21] put_to_scope       scope:loc8, var:0, value:loc6, getPutInfo:2048<ThrowIfNotFound|GlobalProperty|NotInitialization|NotStrictMode>, symbolTableOrScopeDepth:0, offset:0
[  29] mov                dst:loc6, src:Undefined(const0)
[  32] mov                dst:loc6, src:Undefined(const0)
[  35] resolve_scope      dst:loc10, scope:loc4, var:0, resolveType:GlobalProperty, localScopeDepth:0
[  42] get_from_scope     dst:loc7, scope:loc10, var:0, getPutInfo:2048<ThrowIfNotFound|GlobalProperty|NotInitialization|NotStrictMode>, localScopeDepth:0, offset:0
[  50] mov                dst:loc9, src:Int32: 2(const1)
[  53] mov                dst:loc8, src:Int32: 5(const2)
[  56] call               dst:loc6, callee:loc7, argc:3, argv:16
[  62] end                value:loc6
Successors: [ ]


Identifiers:
  id0 = add

Constants:
   k0 = Undefined
   k1 = Int32: 2: in source as integer
   k2 = Int32: 5: in source as integer

add#DxkD3Z:[0x1071c4130->0x1071e5200, NoneFunctionCall, 15]: 6 instructions (0 16-bit instructions, 0 32-bit instructions, 1 instructions with metadata); 139 bytes (124 metadata bytes); 3 parameter(s); 8 callee register(s); 6 variable(s); scope at loc4

bb#1
[   0] enter              
[   1] get_scope          dst:loc4
[   3] mov                dst:loc5, src:loc4
[   6] check_traps        
[   7] add                dst:loc6, lhs:arg1, rhs:arg2, operandTypes:OperandTypes(126, 126)
[  13] ret                value:loc6
Successors: [ ]


