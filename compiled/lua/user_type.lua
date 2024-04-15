-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

UserType = class.class(KaitaiStruct)

function UserType:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function UserType:_read()
  self.one = UserType.Header(self._io, self, self._root)
end


UserType.Header = class.class(KaitaiStruct)

function UserType.Header:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function UserType.Header:_read()
  self.width = self._io:read_u4le()
  self.height = self._io:read_u4le()
end


