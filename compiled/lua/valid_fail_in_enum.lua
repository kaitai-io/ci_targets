-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")

ValidFailInEnum = class.class(KaitaiStruct)

ValidFailInEnum.Animal = enum.Enum {
  dog = 4,
  chicken = 12,
}

function ValidFailInEnum:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ValidFailInEnum:_read()
  self.foo = ValidFailInEnum.Animal(self._io:read_u4le())
  if self.foo == nil then
    error("ValidationNotInEnumError")
  end
end


