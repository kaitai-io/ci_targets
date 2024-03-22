-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

NestedSameName2 = class.class(KaitaiStruct)

function NestedSameName2:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NestedSameName2:_read()
  self.version = self._io:read_u4le()
  self.main_data = NestedSameName2.Main(self._io, self, self._root)
  self.dummy = NestedSameName2.DummyObj(self._io, self, self._root)
end


NestedSameName2.DummyObj = class.class(KaitaiStruct)

function NestedSameName2.DummyObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NestedSameName2.DummyObj:_read()
  self.dummy_size = self._io:read_s4le()
  self.foo = NestedSameName2.DummyObj.FooObj(self._io, self, self._root)
end


NestedSameName2.DummyObj.FooObj = class.class(KaitaiStruct)

function NestedSameName2.DummyObj.FooObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NestedSameName2.DummyObj.FooObj:_read()
  self.data2 = self._io:read_bytes(self._parent.dummy_size * 2)
end


NestedSameName2.Main = class.class(KaitaiStruct)

function NestedSameName2.Main:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NestedSameName2.Main:_read()
  self.main_size = self._io:read_s4le()
  self.foo = NestedSameName2.Main.FooObj(self._io, self, self._root)
end


NestedSameName2.Main.FooObj = class.class(KaitaiStruct)

function NestedSameName2.Main.FooObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NestedSameName2.Main.FooObj:_read()
  self.data1 = self._io:read_bytes(self._parent.main_size * 2)
end


