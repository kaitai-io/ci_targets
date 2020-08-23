-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")
local str_decode = require("string_decode")

EnumIf = class.class(KaitaiStruct)

EnumIf.Opcodes = enum.Enum {
  a_string = 83,
  a_tuple = 84,
}

function EnumIf:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EnumIf:_read()
  self.op1 = EnumIf.Operation(self._io, self, self._root)
  self.op2 = EnumIf.Operation(self._io, self, self._root)
  self.op3 = EnumIf.Operation(self._io, self, self._root)
end


EnumIf.Operation = class.class(KaitaiStruct)

function EnumIf.Operation:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EnumIf.Operation:_read()
  self.opcode = EnumIf.Opcodes(self._io:read_u1())
  if self.opcode == EnumIf.Opcodes.a_tuple then
    self.arg_tuple = EnumIf.ArgTuple(self._io, self, self._root)
  end
  if self.opcode == EnumIf.Opcodes.a_string then
    self.arg_str = EnumIf.ArgStr(self._io, self, self._root)
  end
end


EnumIf.ArgTuple = class.class(KaitaiStruct)

function EnumIf.ArgTuple:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EnumIf.ArgTuple:_read()
  self.num1 = self._io:read_u1()
  self.num2 = self._io:read_u1()
end


EnumIf.ArgStr = class.class(KaitaiStruct)

function EnumIf.ArgStr:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EnumIf.ArgStr:_read()
  self.len = self._io:read_u1()
  self.str = str_decode.decode(self._io:read_bytes(self.len), "UTF-8")
end


