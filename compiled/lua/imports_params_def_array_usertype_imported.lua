-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
require("hello_world")
require("params_def_array_usertype_imported")

ImportsParamsDefArrayUsertypeImported = class.class(KaitaiStruct)

function ImportsParamsDefArrayUsertypeImported:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ImportsParamsDefArrayUsertypeImported:_read()
  self.hws = {}
  for i = 0, 2 - 1 do
    self.hws[i + 1] = HelloWorld(self._io)
  end
  self.two = ParamsDefArrayUsertypeImported(self.hws, self._io)
end


