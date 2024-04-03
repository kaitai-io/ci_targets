-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

StrEncodingsEscapingToS = class.class(KaitaiStruct)

function StrEncodingsEscapingToS:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function StrEncodingsEscapingToS:_read()
  self.len_of_1 = self._io:read_u2le()
  self.str1_raw = self._io:read_bytes(self.len_of_1)
  self.len_of_2 = self._io:read_u2le()
  self.str2_raw = self._io:read_bytes(self.len_of_2)
  self.len_of_3 = self._io:read_u2le()
  self.str3_raw = self._io:read_bytes(self.len_of_3)
  self.len_of_4 = self._io:read_u2le()
  self.str4_raw = self._io:read_bytes(self.len_of_4)
end

StrEncodingsEscapingToS.property.str1 = {}
function StrEncodingsEscapingToS.property.str1:get()
  if self._m_str1 ~= nil then
    return self._m_str1
  end

  self._m_str1 = str_decode.decode(self.str1_raw, "ASCII\\x")
  return self._m_str1
end

StrEncodingsEscapingToS.property.str2 = {}
function StrEncodingsEscapingToS.property.str2:get()
  if self._m_str2 ~= nil then
    return self._m_str2
  end

  self._m_str2 = str_decode.decode(self.str2_raw, "UTF-8\'x")
  return self._m_str2
end

StrEncodingsEscapingToS.property.str3 = {}
function StrEncodingsEscapingToS.property.str3:get()
  if self._m_str3 ~= nil then
    return self._m_str3
  end

  self._m_str3 = str_decode.decode(self.str3_raw, "SJIS\"x")
  return self._m_str3
end

StrEncodingsEscapingToS.property.str4 = {}
function StrEncodingsEscapingToS.property.str4:get()
  if self._m_str4 ~= nil then
    return self._m_str4
  end

  self._m_str4 = str_decode.decode(self.str4_raw, "IBM437\nx")
  return self._m_str4
end


