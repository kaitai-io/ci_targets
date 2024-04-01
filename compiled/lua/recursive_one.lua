-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

RecursiveOne = class.class(KaitaiStruct)

function RecursiveOne:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function RecursiveOne:_read()
  self.one = self._io:read_u1()
  local _on = self.one & 3
  if _on == 0 then
    self.next = RecursiveOne(self._io, self, self._root)
  elseif _on == 1 then
    self.next = RecursiveOne(self._io, self, self._root)
  elseif _on == 2 then
    self.next = RecursiveOne(self._io, self, self._root)
  elseif _on == 3 then
    self.next = RecursiveOne.Fini(self._io, self, self._root)
  end
end


RecursiveOne.Fini = class.class(KaitaiStruct)

function RecursiveOne.Fini:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function RecursiveOne.Fini:_read()
  self.finisher = self._io:read_u2le()
end


