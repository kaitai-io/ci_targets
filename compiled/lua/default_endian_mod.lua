-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

DefaultEndianMod = class.class(KaitaiStruct)

function DefaultEndianMod:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function DefaultEndianMod:_read()
  self.main = DefaultEndianMod.MainObj(self._io, self, self._root)
end


DefaultEndianMod.MainObj = class.class(KaitaiStruct)

function DefaultEndianMod.MainObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function DefaultEndianMod.MainObj:_read()
  self.one = self._io:read_s4le()
  self.nest = DefaultEndianMod.MainObj.Subnest(self._io, self, self._root)
  self.nest_be = DefaultEndianMod.MainObj.SubnestBe(self._io, self, self._root)
end


DefaultEndianMod.MainObj.Subnest = class.class(KaitaiStruct)

function DefaultEndianMod.MainObj.Subnest:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function DefaultEndianMod.MainObj.Subnest:_read()
  self.two = self._io:read_s4le()
end


DefaultEndianMod.MainObj.SubnestBe = class.class(KaitaiStruct)

function DefaultEndianMod.MainObj.SubnestBe:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function DefaultEndianMod.MainObj.SubnestBe:_read()
  self.two = self._io:read_s4be()
end


