-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")
local str_decode = require("string_decode")

StrEncodingsEscapingEnc = class.class(KaitaiStruct)

function StrEncodingsEscapingEnc:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function StrEncodingsEscapingEnc:_read()
  self.len_of_1 = self._io:read_u2le()
  self._raw_str1 = self._io:read_bytes(self.len_of_1)
  local _io = KaitaiStream(stringstream(self._raw_str1))
  self.str1 = StrEncodingsEscapingEnc.Str1Wrapper(_io, self, self._root)
  self.len_of_2 = self._io:read_u2le()
  self._raw_str2 = self._io:read_bytes(self.len_of_2)
  local _io = KaitaiStream(stringstream(self._raw_str2))
  self.str2 = StrEncodingsEscapingEnc.Str2Wrapper(_io, self, self._root)
  self.len_of_3 = self._io:read_u2le()
  self._raw_str3 = self._io:read_bytes(self.len_of_3)
  local _io = KaitaiStream(stringstream(self._raw_str3))
  self.str3 = StrEncodingsEscapingEnc.Str3Wrapper(_io, self, self._root)
  self.len_of_4 = self._io:read_u2le()
  self._raw_str4 = self._io:read_bytes(self.len_of_4)
  local _io = KaitaiStream(stringstream(self._raw_str4))
  self.str4 = StrEncodingsEscapingEnc.Str4Wrapper(_io, self, self._root)
end


StrEncodingsEscapingEnc.Str1Wrapper = class.class(KaitaiStruct)

function StrEncodingsEscapingEnc.Str1Wrapper:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function StrEncodingsEscapingEnc.Str1Wrapper:_read()
end

StrEncodingsEscapingEnc.Str1Wrapper.property.v = {}
function StrEncodingsEscapingEnc.Str1Wrapper.property.v:get()
  if self._m_v ~= nil then
    return self._m_v
  end

  local _pos = self._io:pos()
  self._io:seek(0)
  self._m_v = str_decode.decode(self._io:read_bytes_full(), "ASCII\\\\x")
  self._io:seek(_pos)
  return self._m_v
end


StrEncodingsEscapingEnc.Str2Wrapper = class.class(KaitaiStruct)

function StrEncodingsEscapingEnc.Str2Wrapper:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function StrEncodingsEscapingEnc.Str2Wrapper:_read()
end

StrEncodingsEscapingEnc.Str2Wrapper.property.v = {}
function StrEncodingsEscapingEnc.Str2Wrapper.property.v:get()
  if self._m_v ~= nil then
    return self._m_v
  end

  local _pos = self._io:pos()
  self._io:seek(0)
  self._m_v = str_decode.decode(self._io:read_bytes_full(), "UTF-8\\'x")
  self._io:seek(_pos)
  return self._m_v
end


StrEncodingsEscapingEnc.Str3Wrapper = class.class(KaitaiStruct)

function StrEncodingsEscapingEnc.Str3Wrapper:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function StrEncodingsEscapingEnc.Str3Wrapper:_read()
end

StrEncodingsEscapingEnc.Str3Wrapper.property.v = {}
function StrEncodingsEscapingEnc.Str3Wrapper.property.v:get()
  if self._m_v ~= nil then
    return self._m_v
  end

  local _pos = self._io:pos()
  self._io:seek(0)
  self._m_v = str_decode.decode(self._io:read_bytes_full(), "SJIS\\\"x")
  self._io:seek(_pos)
  return self._m_v
end


StrEncodingsEscapingEnc.Str4Wrapper = class.class(KaitaiStruct)

function StrEncodingsEscapingEnc.Str4Wrapper:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function StrEncodingsEscapingEnc.Str4Wrapper:_read()
end

StrEncodingsEscapingEnc.Str4Wrapper.property.v = {}
function StrEncodingsEscapingEnc.Str4Wrapper.property.v:get()
  if self._m_v ~= nil then
    return self._m_v
  end

  local _pos = self._io:pos()
  self._io:seek(0)
  self._m_v = str_decode.decode(self._io:read_bytes_full(), "IBM437\\nx")
  self._io:seek(_pos)
  return self._m_v
end


