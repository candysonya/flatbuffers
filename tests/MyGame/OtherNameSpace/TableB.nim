#[ MyGame.OtherNameSpace.TableB
  Automatically generated by the FlatBuffers compiler, do not modify.
  Or modify. I'm a message, not a cop.

  flatc version: 25.2.10

  Declared by  : 
  Rooting type : MyGame.Example.Monster ()
]#

import ../../TableA as TableA
import flatbuffers
import std/options

type TableB* = object of FlatObj
func a*(self: TableB): Option[TableA.TableA] =
  let o = self.tab.Offset(4)
  if o != 0:
    return some(TableA.TableA(tab: Vtable(Bytes: self.tab.Bytes, Pos: self.tab.Pos + o)))
proc TableBstart*(builder: var Builder) =
  builder.StartObject(1)
proc TableBadda*(builder: var Builder, a: uoffset) =
  builder.PrependStructSlot(0, a, default(uoffset))
proc TableBend*(builder: var Builder): uoffset =
  return builder.EndObject()
