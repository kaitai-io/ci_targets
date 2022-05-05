-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ZlibWithHeader78 = class.class(KaitaiStruct)

function ZlibWithHeader78:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ZlibWithHeader78:_read()
  self._raw_data = self._io:read_bytes_full()
  self.data = KaitaiStream.process_zlib(self._raw_data)
end


