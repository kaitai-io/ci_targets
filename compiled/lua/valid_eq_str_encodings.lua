-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

ValidEqStrEncodings = class.class(KaitaiStruct)

function ValidEqStrEncodings:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ValidEqStrEncodings:_read()
  self.len_of_1 = self._io:read_u2le()
  self.str1 = str_decode.decode(self._io:read_bytes(self.len_of_1), "ASCII")
  if not(self.str1 == "Some ASCII") then
    error("not equal, expected " ..  "Some ASCII" .. ", but got " .. self.str1)
  end
  self.len_of_2 = self._io:read_u2le()
  self.str2 = str_decode.decode(self._io:read_bytes(self.len_of_2), "UTF-8")
  if not(self.str2 == "\u{3053}\u{3093}\u{306b}\u{3061}\u{306f}") then
    error("not equal, expected " ..  "\u{3053}\u{3093}\u{306b}\u{3061}\u{306f}" .. ", but got " .. self.str2)
  end
  self.len_of_3 = self._io:read_u2le()
  self.str3 = str_decode.decode(self._io:read_bytes(self.len_of_3), "SJIS")
  if not(self.str3 == "\u{3053}\u{3093}\u{306b}\u{3061}\u{306f}") then
    error("not equal, expected " ..  "\u{3053}\u{3093}\u{306b}\u{3061}\u{306f}" .. ", but got " .. self.str3)
  end
  self.len_of_4 = self._io:read_u2le()
  self.str4 = str_decode.decode(self._io:read_bytes(self.len_of_4), "IBM437")
  if not(self.str4 == "\u{2591}\u{2592}\u{2593}") then
    error("not equal, expected " ..  "\u{2591}\u{2592}\u{2593}" .. ", but got " .. self.str4)
  end
end


