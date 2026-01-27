# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class NestedTypes3(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.a_cc = NestedTypes3.SubtypeA.SubtypeCc(self._io, self, self._root)
        self.a_cc._read()
        self.a_c_d = NestedTypes3.SubtypeA.SubtypeC.SubtypeD(self._io, self, self._root)
        self.a_c_d._read()
        self.b = NestedTypes3.SubtypeB(self._io, self, self._root)
        self.b._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.a_cc._fetch_instances()
        self.a_c_d._fetch_instances()
        self.b._fetch_instances()


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self.a_cc._write__seq(self._io)
        self.a_c_d._write__seq(self._io)
        self.b._write__seq(self._io)


    def _check(self):
        if self.a_cc._root != self._root:
            raise kaitaistruct.ConsistencyError("a_cc", self._root, self.a_cc._root)
        if self.a_cc._parent != self:
            raise kaitaistruct.ConsistencyError("a_cc", self, self.a_cc._parent)
        if self.a_c_d._root != self._root:
            raise kaitaistruct.ConsistencyError("a_c_d", self._root, self.a_c_d._root)
        if self.a_c_d._parent != self:
            raise kaitaistruct.ConsistencyError("a_c_d", self, self.a_c_d._parent)
        if self.b._root != self._root:
            raise kaitaistruct.ConsistencyError("b", self._root, self.b._root)
        if self.b._parent != self:
            raise kaitaistruct.ConsistencyError("b", self, self.b._parent)
        self._dirty = False

    class SubtypeA(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            pass
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)


        def _check(self):
            self._dirty = False

        class SubtypeC(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                super().__init__(_io)
                self._parent = _parent
                self._root = _root

            def _read(self):
                pass
                self._dirty = False


            def _fetch_instances(self):
                pass


            def _write__seq(self, io=None):
                super()._write__seq(io)


            def _check(self):
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
            self.a_cc = NestedTypes3.SubtypeA.SubtypeCc(self._io, self, self._root)
            self.a_cc._read()
            self.a_c_d = NestedTypes3.SubtypeA.SubtypeC.SubtypeD(self._io, self, self._root)
            self.a_c_d._read()
            self._dirty = False


        def _fetch_instances(self):
            pass
            self.a_cc._fetch_instances()
            self.a_c_d._fetch_instances()


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_s1(self.value_b)
            self.a_cc._write__seq(self._io)
            self.a_c_d._write__seq(self._io)


        def _check(self):
            if self.a_cc._root != self._root:
                raise kaitaistruct.ConsistencyError("a_cc", self._root, self.a_cc._root)
            if self.a_cc._parent != self:
                raise kaitaistruct.ConsistencyError("a_cc", self, self.a_cc._parent)
            if self.a_c_d._root != self._root:
                raise kaitaistruct.ConsistencyError("a_c_d", self._root, self.a_c_d._root)
            if self.a_c_d._parent != self:
                raise kaitaistruct.ConsistencyError("a_c_d", self, self.a_c_d._parent)
            self._dirty = False



