# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NestedTypes3(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(NestedTypes3, self).__init__(_io)
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
        super(NestedTypes3, self)._write__seq(io)
        self.a_cc._write__seq(self._io)
        self.a_c_d._write__seq(self._io)
        self.b._write__seq(self._io)


    def _check(self):
        if self.a_cc._root != self._root:
            raise kaitaistruct.ConsistencyError(u"a_cc", self.a_cc._root, self._root)
        if self.a_cc._parent != self:
            raise kaitaistruct.ConsistencyError(u"a_cc", self.a_cc._parent, self)
        if self.a_c_d._root != self._root:
            raise kaitaistruct.ConsistencyError(u"a_c_d", self.a_c_d._root, self._root)
        if self.a_c_d._parent != self:
            raise kaitaistruct.ConsistencyError(u"a_c_d", self.a_c_d._parent, self)
        if self.b._root != self._root:
            raise kaitaistruct.ConsistencyError(u"b", self.b._root, self._root)
        if self.b._parent != self:
            raise kaitaistruct.ConsistencyError(u"b", self.b._parent, self)
        self._dirty = False

    class SubtypeA(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(NestedTypes3.SubtypeA, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            pass
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(NestedTypes3.SubtypeA, self)._write__seq(io)


        def _check(self):
            self._dirty = False

        class SubtypeC(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                super(NestedTypes3.SubtypeA.SubtypeC, self).__init__(_io)
                self._parent = _parent
                self._root = _root

            def _read(self):
                pass
                self._dirty = False


            def _fetch_instances(self):
                pass


            def _write__seq(self, io=None):
                super(NestedTypes3.SubtypeA.SubtypeC, self)._write__seq(io)


            def _check(self):
                self._dirty = False

            class SubtypeD(ReadWriteKaitaiStruct):
                def __init__(self, _io=None, _parent=None, _root=None):
                    super(NestedTypes3.SubtypeA.SubtypeC.SubtypeD, self).__init__(_io)
                    self._parent = _parent
                    self._root = _root

                def _read(self):
                    self.value_d = self._io.read_s1()
                    self._dirty = False


                def _fetch_instances(self):
                    pass


                def _write__seq(self, io=None):
                    super(NestedTypes3.SubtypeA.SubtypeC.SubtypeD, self)._write__seq(io)
                    self._io.write_s1(self.value_d)


                def _check(self):
                    self._dirty = False



        class SubtypeCc(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                super(NestedTypes3.SubtypeA.SubtypeCc, self).__init__(_io)
                self._parent = _parent
                self._root = _root

            def _read(self):
                self.value_cc = self._io.read_s1()
                self._dirty = False


            def _fetch_instances(self):
                pass


            def _write__seq(self, io=None):
                super(NestedTypes3.SubtypeA.SubtypeCc, self)._write__seq(io)
                self._io.write_s1(self.value_cc)


            def _check(self):
                self._dirty = False



    class SubtypeB(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(NestedTypes3.SubtypeB, self).__init__(_io)
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
            super(NestedTypes3.SubtypeB, self)._write__seq(io)
            self._io.write_s1(self.value_b)
            self.a_cc._write__seq(self._io)
            self.a_c_d._write__seq(self._io)


        def _check(self):
            if self.a_cc._root != self._root:
                raise kaitaistruct.ConsistencyError(u"a_cc", self.a_cc._root, self._root)
            if self.a_cc._parent != self:
                raise kaitaistruct.ConsistencyError(u"a_cc", self.a_cc._parent, self)
            if self.a_c_d._root != self._root:
                raise kaitaistruct.ConsistencyError(u"a_c_d", self.a_c_d._root, self._root)
            if self.a_c_d._parent != self:
                raise kaitaistruct.ConsistencyError(u"a_c_d", self.a_c_d._parent, self)
            self._dirty = False



