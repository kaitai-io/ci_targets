-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

NavRoot = class.class(KaitaiStruct)

function NavRoot:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavRoot:_read()
  self.header = NavRoot.HeaderObj(self._io, self, self._root)
  self.index = NavRoot.IndexObj(self._io, self, self._root)
end


NavRoot.Entry = class.class(KaitaiStruct)

function NavRoot.Entry:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavRoot.Entry:_read()
  self.filename = str_decode.decode(self._io:read_bytes(self._root.header.filename_len), "UTF-8")
end


NavRoot.HeaderObj = class.class(KaitaiStruct)

function NavRoot.HeaderObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavRoot.HeaderObj:_read()
  self.qty_entries = self._io:read_u4le()
  self.filename_len = self._io:read_u4le()
end


NavRoot.IndexObj = class.class(KaitaiStruct)

function NavRoot.IndexObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavRoot.IndexObj:_read()
  self.magic = self._io:read_bytes(4)
  self.entries = {}
  for i = 0, self._root.header.qty_entries - 1 do
    self.entries[i + 1] = NavRoot.Entry(self._io, self, self._root)
  end
end


