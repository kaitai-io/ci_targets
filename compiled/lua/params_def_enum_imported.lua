-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ParamsDefEnumImported = class.class(KaitaiStruct)

function ParamsDefEnumImported:_init(pet_1_param, pet_2_param, io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self.pet_1_param = pet_1_param
  self.pet_2_param = pet_2_param
  self:_read()
end

function ParamsDefEnumImported:_read()
end


