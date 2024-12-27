-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

DebugArrayUserCurrentExcluded = class.class(KaitaiStruct)

function DebugArrayUserCurrentExcluded:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
end

function DebugArrayUserCurrentExcluded:_read()
  self.array_of_cats = {}
  for i = 0, 3 - 1 do
    local _t_array_of_cats = DebugArrayUserCurrentExcluded.Cat(self._io, self, self._root)
    local success, err = pcall(function()
      _t_array_of_cats:_read()
    end)
    self.array_of_cats[i + 1] = _t_array_of_cats
    if not success then
      error(err)
    end
  end
end


DebugArrayUserCurrentExcluded.Cat = class.class(KaitaiStruct)

function DebugArrayUserCurrentExcluded.Cat:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
end

function DebugArrayUserCurrentExcluded.Cat:_read()
  self.meow = self._io:read_bytes(3 - #self._parent.array_of_cats)
end


