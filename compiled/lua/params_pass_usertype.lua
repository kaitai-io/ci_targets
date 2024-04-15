-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ParamsPassUsertype = class.class(KaitaiStruct)

function ParamsPassUsertype:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ParamsPassUsertype:_read()
  self.first = ParamsPassUsertype.Block(self._io, self, self._root)
  self.one = ParamsPassUsertype.ParamType(self.first, self._io, self, self._root)
end


ParamsPassUsertype.Block = class.class(KaitaiStruct)

function ParamsPassUsertype.Block:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function ParamsPassUsertype.Block:_read()
  self.foo = self._io:read_u1()
end


ParamsPassUsertype.ParamType = class.class(KaitaiStruct)

function ParamsPassUsertype.ParamType:_init(foo, io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self.foo = foo
  self:_read()
end

function ParamsPassUsertype.ParamType:_read()
  self.buf = self._io:read_bytes(self.foo.foo)
end


