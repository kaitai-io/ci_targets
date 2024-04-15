-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")
local str_decode = require("string_decode")

StrEncodingsUtf16 = class.class(KaitaiStruct)

function StrEncodingsUtf16:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function StrEncodingsUtf16:_read()
  self.len_be = self._io:read_u4le()
  self._raw_be_bom_removed = self._io:read_bytes(self.len_be)
  local _io = KaitaiStream(stringstream(self._raw_be_bom_removed))
  self.be_bom_removed = StrEncodingsUtf16.StrBeBomRemoved(_io, self, self._root)
  self.len_le = self._io:read_u4le()
  self._raw_le_bom_removed = self._io:read_bytes(self.len_le)
  local _io = KaitaiStream(stringstream(self._raw_le_bom_removed))
  self.le_bom_removed = StrEncodingsUtf16.StrLeBomRemoved(_io, self, self._root)
end


StrEncodingsUtf16.StrBeBomRemoved = class.class(KaitaiStruct)

function StrEncodingsUtf16.StrBeBomRemoved:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function StrEncodingsUtf16.StrBeBomRemoved:_read()
  self.bom = self._io:read_u2be()
  self.str = str_decode.decode(self._io:read_bytes_full(), "UTF-16BE")
end


StrEncodingsUtf16.StrLeBomRemoved = class.class(KaitaiStruct)

function StrEncodingsUtf16.StrLeBomRemoved:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function StrEncodingsUtf16.StrLeBomRemoved:_read()
  self.bom = self._io:read_u2le()
  self.str = str_decode.decode(self._io:read_bytes_full(), "UTF-16LE")
end


