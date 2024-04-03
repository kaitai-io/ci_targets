-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

EnumImportSeq = class.class(KaitaiStruct)

function EnumImportSeq:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function EnumImportSeq:_read()
  self.pet_1 = Enum0.Animal(self._io:read_u4le())
  self.pet_2 = EnumDeep.Container1.Container2.Animal(self._io:read_u4le())
end


