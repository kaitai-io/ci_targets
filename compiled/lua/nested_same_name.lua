-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

NestedSameName = class.class(KaitaiStruct)

function NestedSameName:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NestedSameName:_read()
  self.main_data = NestedSameName.Main(self._io, self, self._root)
  self.dummy = NestedSameName.DummyObj(self._io, self, self._root)
end


NestedSameName.DummyObj = class.class(KaitaiStruct)

function NestedSameName.DummyObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function NestedSameName.DummyObj:_read()
end


NestedSameName.DummyObj.Foo = class.class(KaitaiStruct)

function NestedSameName.DummyObj.Foo:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function NestedSameName.DummyObj.Foo:_read()
end


NestedSameName.Main = class.class(KaitaiStruct)

function NestedSameName.Main:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function NestedSameName.Main:_read()
  self.main_size = self._io:read_s4le()
  self.foo = NestedSameName.Main.FooObj(self._io, self, self._root)
end


NestedSameName.Main.FooObj = class.class(KaitaiStruct)

function NestedSameName.Main.FooObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function NestedSameName.Main.FooObj:_read()
  self.data = self._io:read_bytes(self._parent.main_size * 2)
end


