-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

ValidShort = class.class(KaitaiStruct)

function ValidShort:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ValidShort:_read()
  self.magic1 = self._io:read_bytes(6)
  if not(self.magic1 == "\080\065\067\075\045\049") then
    error("not equal, expected " ..  "\080\065\067\075\045\049" .. ", but got " .. self.magic1)
  end
  self.uint8 = self._io:read_u1()
  if not(self.uint8 == 255) then
    error("not equal, expected " ..  255 .. ", but got " .. self.uint8)
  end
  self.sint8 = self._io:read_s1()
  if not(self.sint8 == -1) then
    error("not equal, expected " ..  -1 .. ", but got " .. self.sint8)
  end
  self.magic_uint = str_decode.decode(self._io:read_bytes(10), "UTF-8")
  if not(self.magic_uint == "PACK-U-DEF") then
    error("not equal, expected " ..  "PACK-U-DEF" .. ", but got " .. self.magic_uint)
  end
  self.uint16 = self._io:read_u2le()
  if not(self.uint16 == 65535) then
    error("not equal, expected " ..  65535 .. ", but got " .. self.uint16)
  end
  self.uint32 = self._io:read_u4le()
  if not(self.uint32 == 4294967295) then
    error("not equal, expected " ..  4294967295 .. ", but got " .. self.uint32)
  end
  self.uint64 = self._io:read_u8le()
  if not(self.uint64 == 0xffffffffffffffff) then
    error("not equal, expected " ..  0xffffffffffffffff .. ", but got " .. self.uint64)
  end
  self.magic_sint = str_decode.decode(self._io:read_bytes(10), "UTF-8")
  if not(self.magic_sint == "PACK-S-DEF") then
    error("not equal, expected " ..  "PACK-S-DEF" .. ", but got " .. self.magic_sint)
  end
  self.sint16 = self._io:read_s2le()
  if not(self.sint16 == -1) then
    error("not equal, expected " ..  -1 .. ", but got " .. self.sint16)
  end
  self.sint32 = self._io:read_s4le()
  if not(self.sint32 == -1) then
    error("not equal, expected " ..  -1 .. ", but got " .. self.sint32)
  end
  self.sint64 = self._io:read_s8le()
  if not(self.sint64 == -1) then
    error("not equal, expected " ..  -1 .. ", but got " .. self.sint64)
  end
end


