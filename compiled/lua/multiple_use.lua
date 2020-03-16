-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

MultipleUse = class.class(KaitaiStruct)

function MultipleUse:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function MultipleUse:_read()
  self.t1 = MultipleUse.Type1(self._io, self, self._root)
  self.t2 = MultipleUse.Type2(self._io, self, self._root)
end


MultipleUse.Multi = class.class(KaitaiStruct)

function MultipleUse.Multi:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function MultipleUse.Multi:_read()
  self.value = self._io:read_s4le()
end


MultipleUse.Type1 = class.class(KaitaiStruct)

function MultipleUse.Type1:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function MultipleUse.Type1:_read()
  self.first_use = MultipleUse.Multi(self._io, self, self._root)
end


MultipleUse.Type2 = class.class(KaitaiStruct)

function MultipleUse.Type2:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function MultipleUse.Type2:_read()
end

MultipleUse.Type2.property.second_use = {}
function MultipleUse.Type2.property.second_use:get()
  if self._m_second_use ~= nil then
    return self._m_second_use
  end

  local _pos = self._io:pos()
  self._io:seek(0)
  self._m_second_use = MultipleUse.Multi(self._io, self, self._root)
  self._io:seek(_pos)
  return self._m_second_use
end


