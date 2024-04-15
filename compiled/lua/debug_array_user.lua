-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

DebugArrayUser = class.class(KaitaiStruct)

function DebugArrayUser:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
end

function DebugArrayUser:_read()
  self.one_cat = DebugArrayUser.Cat(self._io, self, self._root)
  self.one_cat:_read()
  self.array_of_cats = {}
  for i = 0, 3 - 1 do
    local _t_array_of_cats = DebugArrayUser.Cat(self._io, self, self._root)
    self.array_of_cats[i + 1] = _t_array_of_cats
    _t_array_of_cats:_read()
  end
end


DebugArrayUser.Cat = class.class(KaitaiStruct)

function DebugArrayUser.Cat:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
end

function DebugArrayUser.Cat:_read()
  self.meow = self._io:read_u1()
end


