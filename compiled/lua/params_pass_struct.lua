-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ParamsPassStruct = class.class(KaitaiStruct)

function ParamsPassStruct:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ParamsPassStruct:_read()
  self.first = ParamsPassStruct.Block(self._io, self, self._root)
  self.one = ParamsPassStruct.StructType(self.first, self._io, self, self._root)
end


ParamsPassStruct.Block = class.class(KaitaiStruct)

function ParamsPassStruct.Block:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function ParamsPassStruct.Block:_read()
  self.foo = self._io:read_u1()
end


ParamsPassStruct.StructType = class.class(KaitaiStruct)

function ParamsPassStruct.StructType:_init(foo, io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self.foo = foo
  self:_read()
end

function ParamsPassStruct.StructType:_read()
  self.bar = ParamsPassStruct.StructType.Baz(self.foo, self._io, self, self._root)
end


ParamsPassStruct.StructType.Baz = class.class(KaitaiStruct)

function ParamsPassStruct.StructType.Baz:_init(foo, io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self.foo = foo
  self:_read()
end

function ParamsPassStruct.StructType.Baz:_read()
  self.qux = self._io:read_u1()
end


