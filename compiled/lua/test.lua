-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

Test = class.class(KaitaiStruct)

function Test:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function Test:_read()
  self.seq_block = Test(self._io)
end


Test.MyType = class.class(KaitaiStruct)

function Test.MyType:_init(repeat_count, io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self.repeat_count = repeat_count
  self:_read()
end

function Test.MyType:_read()
  self.world = self._io:read_s4be()
  self.repeated_thing = {}
  for i = 1, self.repeat_count do
    self.repeated_thing[i] = self._io:read_s4be()
  end
end


