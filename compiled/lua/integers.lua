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
  self.magic1 = self._io:read_bytes(6)
  if not(self.magic1 == "\080\065\067\075\045\049") then
    error("not equal, expected " .. "\080\065\067\075\045\049" .. ", but got " .. self.magic1)
  end
  self.uint8 = self._io:read_u1()
  self.sint8 = self._io:read_s1()
  self.magic_uint = self._io:read_bytes(10)
  if not(self.magic_uint == "\080\065\067\075\045\085\045\068\069\070") then
    error("not equal, expected " .. "\080\065\067\075\045\085\045\068\069\070" .. ", but got " .. self.magic_uint)
  end
  self.uint16 = self._io:read_u2le()
  self.uint32 = self._io:read_u4le()
  self.uint64 = self._io:read_u8le()
  self.magic_sint = self._io:read_bytes(10)
  if not(self.magic_sint == "\080\065\067\075\045\083\045\068\069\070") then
    error("not equal, expected " .. "\080\065\067\075\045\083\045\068\069\070" .. ", but got " .. self.magic_sint)
  end
  self.sint16 = self._io:read_s2le()
  self.sint32 = self._io:read_s4le()
  self.sint64 = self._io:read_s8le()
  self.magic_uint_le = self._io:read_bytes(9)
  if not(self.magic_uint_le == "\080\065\067\075\045\085\045\076\069") then
    error("not equal, expected " .. "\080\065\067\075\045\085\045\076\069" .. ", but got " .. self.magic_uint_le)
  end
  self.uint16le = self._io:read_u2le()
  self.uint32le = self._io:read_u4le()
  self.uint64le = self._io:read_u8le()
  self.magic_sint_le = self._io:read_bytes(9)
  if not(self.magic_sint_le == "\080\065\067\075\045\083\045\076\069") then
    error("not equal, expected " .. "\080\065\067\075\045\083\045\076\069" .. ", but got " .. self.magic_sint_le)
  end
  self.sint16le = self._io:read_s2le()
  self.sint32le = self._io:read_s4le()
  self.sint64le = self._io:read_s8le()
  self.magic_uint_be = self._io:read_bytes(9)
  if not(self.magic_uint_be == "\080\065\067\075\045\085\045\066\069") then
    error("not equal, expected " .. "\080\065\067\075\045\085\045\066\069" .. ", but got " .. self.magic_uint_be)
  end
  self.uint16be = self._io:read_u2be()
  self.uint32be = self._io:read_u4be()
  self.uint64be = self._io:read_u8be()
  self.magic_sint_be = self._io:read_bytes(9)
  if not(self.magic_sint_be == "\080\065\067\075\045\083\045\066\069") then
    error("not equal, expected " .. "\080\065\067\075\045\083\045\066\069" .. ", but got " .. self.magic_sint_be)
  end
  self.sint16be = self._io:read_s2be()
  self.sint32be = self._io:read_s4be()
  self.sint64be = self._io:read_s8be()
end


