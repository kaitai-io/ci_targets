# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class NestedTypes(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.one = NestedTypes.SubtypeA(self._io, self, self._root)
        self.one._read()
        self.two = NestedTypes.SubtypeB(self._io, self, self._root)
        self.two._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.one._fetch_instances()
        self.two._fetch_instances()


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self.one._write__seq(self._io)
        self.two._write__seq(self._io)


    def _check(self):
        if self.one._root != self._root:
            raise kaitaistruct.ConsistencyError("one", self._root, self.one._root)
        if self.one._parent != self:
            raise kaitaistruct.ConsistencyError("one", self, self.one._parent)
        if self.two._root != self._root:
            raise kaitaistruct.ConsistencyError("two", self._root, self.two._root)
        if self.two._parent != self:
            raise kaitaistruct.ConsistencyError("two", self, self.two._parent)
        self._dirty = False

    class SubtypeA(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.typed_at_root = NestedTypes.SubtypeB(self._io, self, self._root)
            self.typed_at_root._read()
            self.typed_here = NestedTypes.SubtypeA.SubtypeC(self._io, self, self._root)
            self.typed_here._read()
            self._dirty = False


        def _fetch_instances(self):
            pass
            self.typed_at_root._fetch_instances()
            self.typed_here._fetch_instances()


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self.typed_at_root._write__seq(self._io)
            self.typed_here._write__seq(self._io)


        def _check(self):
            if self.typed_at_root._root != self._root:
                raise kaitaistruct.ConsistencyError("typed_at_root", self._root, self.typed_at_root._root)
            if self.typed_at_root._parent != self:
                raise kaitaistruct.ConsistencyError("typed_at_root", self, self.typed_at_root._parent)
            if self.typed_here._root != self._root:
                raise kaitaistruct.ConsistencyError("typed_here", self._root, self.typed_here._root)
            if self.typed_here._parent != self:
                raise kaitaistruct.ConsistencyError("typed_here", self, self.typed_here._parent)
            self._dirty = False

        class SubtypeC(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                super().__init__(_io)
                self._parent = _parent
                self._root = _root

            def _read(self):
                self.value_c = self._io.read_s1()
                self._dirty = False


            def _fetch_instances(self):
                pass


            def _write__seq(self, io=None):
                super()._write__seq(io)
                self._io.write_s1(self.value_c)


            def _check(self):
                self._dirty = False



    class SubtypeB(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.value_b = self._io.read_s1()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_s1(self.value_b)


        def _check(self):
            self._dirty = False



