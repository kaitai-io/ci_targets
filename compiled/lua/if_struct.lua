-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

IfStruct = class.class(KaitaiStruct)

function IfStruct:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function IfStruct:_read()
  self.op1 = IfStruct.Operation(self._io, self, self._root)
  self.op2 = IfStruct.Operation(self._io, self, self._root)
  self.op3 = IfStruct.Operation(self._io, self, self._root)
end


IfStruct.ArgStr = class.class(KaitaiStruct)

function IfStruct.ArgStr:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function IfStruct.ArgStr:_read()
  self.len = self._io:read_u1()
  self.str = str_decode.decode(self._io:read_bytes(self.len), "UTF-8")
end


IfStruct.ArgTuple = class.class(KaitaiStruct)

function IfStruct.ArgTuple:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function IfStruct.ArgTuple:_read()
  self.num1 = self._io:read_u1()
  self.num2 = self._io:read_u1()
end


IfStruct.Operation = class.class(KaitaiStruct)

function IfStruct.Operation:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function IfStruct.Operation:_read()
  self.opcode = self._io:read_u1()
  if self.opcode == 84 then
    self.arg_tuple = IfStruct.ArgTuple(self._io, self, self._root)
  end
  if self.opcode == 83 then
    self.arg_str = IfStruct.ArgStr(self._io, self, self._root)
  end
end


