# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class NestedTypes2(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.one = NestedTypes2.SubtypeA(self._io, self, self._root)
        self.one._read()
        self.two = NestedTypes2.SubtypeB(self._io, self, self._root)
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
            self.typed_at_root = NestedTypes2.SubtypeB(self._io, self, self._root)
            self.typed_at_root._read()
            self.typed_here1 = NestedTypes2.SubtypeA.SubtypeC(self._io, self, self._root)
            self.typed_here1._read()
            self.typed_here2 = NestedTypes2.SubtypeA.SubtypeCc(self._io, self, self._root)
            self.typed_here2._read()
            self._dirty = False


        def _fetch_instances(self):
            pass
            self.typed_at_root._fetch_instances()
            self.typed_here1._fetch_instances()
            self.typed_here2._fetch_instances()


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self.typed_at_root._write__seq(self._io)
            self.typed_here1._write__seq(self._io)
            self.typed_here2._write__seq(self._io)


        def _check(self):
            if self.typed_at_root._root != self._root:
                raise kaitaistruct.ConsistencyError("typed_at_root", self._root, self.typed_at_root._root)
            if self.typed_at_root._parent != self:
                raise kaitaistruct.ConsistencyError("typed_at_root", self, self.typed_at_root._parent)
            if self.typed_here1._root != self._root:
                raise kaitaistruct.ConsistencyError("typed_here1", self._root, self.typed_here1._root)
            if self.typed_here1._parent != self:
                raise kaitaistruct.ConsistencyError("typed_here1", self, self.typed_here1._parent)
            if self.typed_here2._root != self._root:
                raise kaitaistruct.ConsistencyError("typed_here2", self._root, self.typed_here2._root)
            if self.typed_here2._parent != self:
                raise kaitaistruct.ConsistencyError("typed_here2", self, self.typed_here2._parent)
            self._dirty = False

        class SubtypeC(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                super().__init__(_io)
                self._parent = _parent
                self._root = _root

            def _read(self):
                self.value_c = self._io.read_s1()
                self.typed_here = NestedTypes2.SubtypeA.SubtypeC.SubtypeD(self._io, self, self._root)
                self.typed_here._read()
                self.typed_parent = NestedTypes2.SubtypeA.SubtypeCc(self._io, self, self._root)
                self.typed_parent._read()
                self.typed_root = NestedTypes2.SubtypeB(self._io, self, self._root)
                self.typed_root._read()
                self._dirty = False


            def _fetch_instances(self):
                pass
                self.typed_here._fetch_instances()
                self.typed_parent._fetch_instances()
                self.typed_root._fetch_instances()


            def _write__seq(self, io=None):
                super()._write__seq(io)
                self._io.write_s1(self.value_c)
                self.typed_here._write__seq(self._io)
                self.typed_parent._write__seq(self._io)
                self.typed_root._write__seq(self._io)


            def _check(self):
                if self.typed_here._root != self._root:
                    raise kaitaistruct.ConsistencyError("typed_here", self._root, self.typed_here._root)
                if self.typed_here._parent != self:
                    raise kaitaistruct.ConsistencyError("typed_here", self, self.typed_here._parent)
                if self.typed_parent._root != self._root:
                    raise kaitaistruct.ConsistencyError("typed_parent", self._root, self.typed_parent._root)
                if self.typed_parent._parent != self:
                    raise kaitaistruct.ConsistencyError("typed_parent", self, self.typed_parent._parent)
                if self.typed_root._root != self._root:
                    raise kaitaistruct.ConsistencyError("typed_root", self._root, self.typed_root._root)
                if self.typed_root._parent != self:
                    raise kaitaistruct.ConsistencyError("typed_root", self, self.typed_root._parent)
                self._dirty = False

            class SubtypeD(ReadWriteKaitaiStruct):
                def __init__(self, _io=None, _parent=None, _root=None):
                    super().__init__(_io)
                    self._parent = _parent
                    self._root = _root

                def _read(self):
                    self.value_d = self._io.read_s1()
                    self._dirty = False


                def _fetch_instances(self):
                    pass


                def _write__seq(self, io=None):
                    super()._write__seq(io)
                    self._io.write_s1(self.value_d)


                def _check(self):
                    self._dirty = False



        class SubtypeCc(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                super().__init__(_io)
                self._parent = _parent
                self._root = _root

            def _read(self):
                self.value_cc = self._io.read_s1()
                self._dirty = False


            def _fetch_instances(self):
                pass


            def _write__seq(self, io=None):
                super()._write__seq(io)
                self._io.write_s1(self.value_cc)


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



