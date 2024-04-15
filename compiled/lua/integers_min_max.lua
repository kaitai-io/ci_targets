-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

IntegersMinMax = class.class(KaitaiStruct)

function IntegersMinMax:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function IntegersMinMax:_read()
  self.unsigned_min = IntegersMinMax.Unsigned(self._io, self, self._root)
  self.unsigned_max = IntegersMinMax.Unsigned(self._io, self, self._root)
  self.signed_min = IntegersMinMax.Signed(self._io, self, self._root)
  self.signed_max = IntegersMinMax.Signed(self._io, self, self._root)
end


IntegersMinMax.Signed = class.class(KaitaiStruct)

function IntegersMinMax.Signed:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function IntegersMinMax.Signed:_read()
  self.s1 = self._io:read_s1()
  self.s2le = self._io:read_s2le()
  self.s4le = self._io:read_s4le()
  self.s8le = self._io:read_s8le()
  self.s2be = self._io:read_s2be()
  self.s4be = self._io:read_s4be()
  self.s8be = self._io:read_s8be()
end


IntegersMinMax.Unsigned = class.class(KaitaiStruct)

function IntegersMinMax.Unsigned:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function IntegersMinMax.Unsigned:_read()
  self.u1 = self._io:read_u1()
  self.u2le = self._io:read_u2le()
  self.u4le = self._io:read_u4le()
  self.u8le = self._io:read_u8le()
  self.u2be = self._io:read_u2be()
  self.u4be = self._io:read_u4be()
  self.u8be = self._io:read_u8be()
end


