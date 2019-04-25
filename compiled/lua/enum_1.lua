-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")

Enum1 = class.class(KaitaiStruct)

function Enum1:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function Enum1:_read()
  self.main = Enum1.MainObj(self._io, self, self._root)
end


Enum1.MainObj = class.class(KaitaiStruct)

Enum1.MainObj.Animal = enum.Enum {
  dog = 4,
  cat = 7,
  chicken = 12,
}

function Enum1.MainObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function Enum1.MainObj:_read()
  self.submain = Enum1.MainObj.SubmainObj(self._io, self, self._root)
end


Enum1.MainObj.SubmainObj = class.class(KaitaiStruct)

function Enum1.MainObj.SubmainObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function Enum1.MainObj.SubmainObj:_read()
  self.pet_1 = Enum1.MainObj.Animal(self._io:read_u4le())
  self.pet_2 = Enum1.MainObj.Animal(self._io:read_u4le())
end


