# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class MultipleUse(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.t1 = MultipleUse.Type1(self._io, self, self._root)
        self.t1._read()
        self.t2 = MultipleUse.Type2(self._io, self, self._root)
        self.t2._read()


    def _fetch_instances(self):
        pass
        self.t1._fetch_instances()
        self.t2._fetch_instances()


    def _write__seq(self, io=None):
        super(MultipleUse, self)._write__seq(io)
        self.t1._write__seq(self._io)
        self.t2._write__seq(self._io)


    def _check(self):
        pass
        if self.t1._root != self._root:
            raise kaitaistruct.ConsistencyError(u"t1", self.t1._root, self._root)
        if self.t1._parent != self:
            raise kaitaistruct.ConsistencyError(u"t1", self.t1._parent, self)
        if self.t2._root != self._root:
            raise kaitaistruct.ConsistencyError(u"t2", self.t2._root, self._root)
        if self.t2._parent != self:
            raise kaitaistruct.ConsistencyError(u"t2", self.t2._parent, self)

    class Multi(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.value = self._io.read_s4le()


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(MultipleUse.Multi, self)._write__seq(io)
            self._io.write_s4le(self.value)


        def _check(self):
            pass


    class Type1(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.first_use = MultipleUse.Multi(self._io, self, self._root)
            self.first_use._read()


        def _fetch_instances(self):
            pass
            self.first_use._fetch_instances()


        def _write__seq(self, io=None):
            super(MultipleUse.Type1, self)._write__seq(io)
            self.first_use._write__seq(self._io)


        def _check(self):
            pass
            if self.first_use._root != self._root:
                raise kaitaistruct.ConsistencyError(u"first_use", self.first_use._root, self._root)
            if self.first_use._parent != self:
                raise kaitaistruct.ConsistencyError(u"first_use", self.first_use._parent, self)


    class Type2(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._should_write_second_use = False
            self.second_use__to_write = True

        def _read(self):
            pass


        def _fetch_instances(self):
            pass
            _ = self.second_use
            self._m_second_use._fetch_instances()


        def _write__seq(self, io=None):
            super(MultipleUse.Type2, self)._write__seq(io)
            self._should_write_second_use = self.second_use__to_write


        def _check(self):
            pass

        @property
        def second_use(self):
            if self._should_write_second_use:
                self._write_second_use()
            if hasattr(self, '_m_second_use'):
                return self._m_second_use

            _pos = self._io.pos()
            self._io.seek(0)
            self._m_second_use = MultipleUse.Multi(self._io, self, self._root)
            self._m_second_use._read()
            self._io.seek(_pos)
            return getattr(self, '_m_second_use', None)

        @second_use.setter
        def second_use(self, v):
            self._m_second_use = v

        def _write_second_use(self):
            self._should_write_second_use = False
            _pos = self._io.pos()
            self._io.seek(0)
            self._m_second_use._write__seq(self._io)
            self._io.seek(_pos)


        def _check_second_use(self):
            pass
            if self._m_second_use._root != self._root:
                raise kaitaistruct.ConsistencyError(u"second_use", self._m_second_use._root, self._root)
            if self._m_second_use._parent != self:
                raise kaitaistruct.ConsistencyError(u"second_use", self._m_second_use._parent, self)



