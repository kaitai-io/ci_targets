-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

DefaultBitEndianMod = class.class(KaitaiStruct)

function DefaultBitEndianMod:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function DefaultBitEndianMod:_read()
  self.main = DefaultBitEndianMod.MainObj(self._io, self, self._root)
end


DefaultBitEndianMod.MainObj = class.class(KaitaiStruct)

function DefaultBitEndianMod.MainObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function DefaultBitEndianMod.MainObj:_read()
  self.one = self._io:read_bits_int(9)
  self.two = self._io:read_bits_int(15)
  self._io:align_to_byte()
  self.nest = DefaultBitEndianMod.MainObj.Subnest(self._io, self, self._root)
  self.nest_be = DefaultBitEndianMod.MainObj.SubnestBe(self._io, self, self._root)
end


DefaultBitEndianMod.MainObj.Subnest = class.class(KaitaiStruct)

function DefaultBitEndianMod.MainObj.Subnest:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function DefaultBitEndianMod.MainObj.Subnest:_read()
  self.two = self._io:read_bits_int(16)
end


DefaultBitEndianMod.MainObj.SubnestBe = class.class(KaitaiStruct)

function DefaultBitEndianMod.MainObj.SubnestBe:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function DefaultBitEndianMod.MainObj.SubnestBe:_read()
  self.two = self._io:read_bits_int(16)
end


