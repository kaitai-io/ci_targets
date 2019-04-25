-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

NavParent = class.class(KaitaiStruct)

function NavParent:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavParent:_read()
  self.header = NavParent.HeaderObj(self._io, self, self._root)
  self.index = NavParent.IndexObj(self._io, self, self._root)
end


NavParent.HeaderObj = class.class(KaitaiStruct)

function NavParent.HeaderObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavParent.HeaderObj:_read()
  self.qty_entries = self._io:read_u4le()
  self.filename_len = self._io:read_u4le()
end


NavParent.IndexObj = class.class(KaitaiStruct)

function NavParent.IndexObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavParent.IndexObj:_read()
  self.magic = self._io:read_bytes(4)
  self.entries = {}
  for i = 1, self._parent.header.qty_entries do
    self.entries[i] = NavParent.Entry(self._io, self, self._root)
  end
end


NavParent.Entry = class.class(KaitaiStruct)

function NavParent.Entry:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NavParent.Entry:_read()
  self.filename = str_decode.decode(self._io:read_bytes(self._parent._parent.header.filename_len), "UTF-8")
end


