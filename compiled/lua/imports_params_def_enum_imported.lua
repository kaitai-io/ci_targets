-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

require("params_def_enum_imported")
require("enum_import_seq")
ImportsParamsDefEnumImported = class.class(KaitaiStruct)

function ImportsParamsDefEnumImported:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ImportsParamsDefEnumImported:_read()
  self.one = EnumImportSeq(self._io)
  self.two = ParamsDefEnumImported(self.one.pet_1, self.one.pet_2, self._io)
end


