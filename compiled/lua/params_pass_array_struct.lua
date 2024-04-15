-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ParamsPassArrayStruct = class.class(KaitaiStruct)

function ParamsPassArrayStruct:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ParamsPassArrayStruct:_read()
  self.one = ParamsPassArrayStruct.Foo(self._io, self, self._root)
  self.two = ParamsPassArrayStruct.Bar(self._io, self, self._root)
  self.pass_structs = ParamsPassArrayStruct.StructType(self.one_two, self._io, self, self._root)
end

ParamsPassArrayStruct.property.one_two = {}
function ParamsPassArrayStruct.property.one_two:get()
  if self._m_one_two ~= nil then
    return self._m_one_two
  end

  self._m_one_two = {self.one, self.two}
  return self._m_one_two
end


ParamsPassArrayStruct.Bar = class.class(KaitaiStruct)

function ParamsPassArrayStruct.Bar:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function ParamsPassArrayStruct.Bar:_read()
  self.b = self._io:read_u1()
end


ParamsPassArrayStruct.Foo = class.class(KaitaiStruct)

function ParamsPassArrayStruct.Foo:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function ParamsPassArrayStruct.Foo:_read()
  self.f = self._io:read_u1()
end


ParamsPassArrayStruct.StructType = class.class(KaitaiStruct)

function ParamsPassArrayStruct.StructType:_init(structs, io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self.structs = structs
  self:_read()
end

function ParamsPassArrayStruct.StructType:_read()
end


