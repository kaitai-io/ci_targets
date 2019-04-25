-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

Integers = class.class(KaitaiStruct)

function Integers:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function Integers:_read()
  self.magic1 = self._io:ensure_fixed_contents("\080\065\067\075\045\049")
  self.uint8 = self._io:read_u1()
  self.sint8 = self._io:read_s1()
  self.magic_uint = self._io:ensure_fixed_contents("\080\065\067\075\045\085\045\068\069\070")
  self.uint16 = self._io:read_u2le()
  self.uint32 = self._io:read_u4le()
  self.uint64 = self._io:read_u8le()
  self.magic_sint = self._io:ensure_fixed_contents("\080\065\067\075\045\083\045\068\069\070")
  self.sint16 = self._io:read_s2le()
  self.sint32 = self._io:read_s4le()
  self.sint64 = self._io:read_s8le()
  self.magic_uint_le = self._io:ensure_fixed_contents("\080\065\067\075\045\085\045\076\069")
  self.uint16le = self._io:read_u2le()
  self.uint32le = self._io:read_u4le()
  self.uint64le = self._io:read_u8le()
  self.magic_sint_le = self._io:ensure_fixed_contents("\080\065\067\075\045\083\045\076\069")
  self.sint16le = self._io:read_s2le()
  self.sint32le = self._io:read_s4le()
  self.sint64le = self._io:read_s8le()
  self.magic_uint_be = self._io:ensure_fixed_contents("\080\065\067\075\045\085\045\066\069")
  self.uint16be = self._io:read_u2be()
  self.uint32be = self._io:read_u4be()
  self.uint64be = self._io:read_u8be()
  self.magic_sint_be = self._io:ensure_fixed_contents("\080\065\067\075\045\083\045\066\069")
  self.sint16be = self._io:read_s2be()
  self.sint32be = self._io:read_s4be()
  self.sint64be = self._io:read_s8be()
end


