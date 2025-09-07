# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class InstanceIoUserEarlier(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(InstanceIoUserEarlier, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._should_write_a_mid = False
        self.a_mid__enabled = True
        self._should_write_b_mid = False
        self.b_mid__enabled = True

    def _read(self):
        self._raw_sized_a = self._io.read_bytes(6)
        _io__raw_sized_a = KaitaiStream(BytesIO(self._raw_sized_a))
        self.sized_a = InstanceIoUserEarlier.Slot(_io__raw_sized_a, self, self._root)
        self.sized_a._read()
        self._raw_sized_b = self._io.read_bytes(6)
        _io__raw_sized_b = KaitaiStream(BytesIO(self._raw_sized_b))
        self.sized_b = InstanceIoUserEarlier.Slot(_io__raw_sized_b, self, self._root)
        self.sized_b._read()
        self.into_b = InstanceIoUserEarlier.Foo(self._io, self, self._root)
        self.into_b._read()
        self.into_a_skipped = InstanceIoUserEarlier.Foo(self._io, self, self._root)
        self.into_a_skipped._read()
        self.into_a = InstanceIoUserEarlier.Foo(self._io, self, self._root)
        self.into_a._read()
        self.last_accessor = InstanceIoUserEarlier.Baz(self._io, self, self._root)
        self.last_accessor._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.sized_a._fetch_instances()
        self.sized_b._fetch_instances()
        self.into_b._fetch_instances()
        self.into_a_skipped._fetch_instances()
        self.into_a._fetch_instances()
        self.last_accessor._fetch_instances()
        _ = self.a_mid
        if hasattr(self, '_m_a_mid'):
            pass

        _ = self.b_mid
        if hasattr(self, '_m_b_mid'):
            pass



    def _write__seq(self, io=None):
        super(InstanceIoUserEarlier, self)._write__seq(io)
        self._should_write_a_mid = self.a_mid__enabled
        self._should_write_b_mid = self.b_mid__enabled
        _io__raw_sized_a = KaitaiStream(BytesIO(bytearray(6)))
        self._io.add_child_stream(_io__raw_sized_a)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (6))
        def handler(parent, _io__raw_sized_a=_io__raw_sized_a):
            self._raw_sized_a = _io__raw_sized_a.to_byte_array()
            if len(self._raw_sized_a) != 6:
                raise kaitaistruct.ConsistencyError(u"raw(sized_a)", 6, len(self._raw_sized_a))
            parent.write_bytes(self._raw_sized_a)
        _io__raw_sized_a.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.sized_a._write__seq(_io__raw_sized_a)
        _io__raw_sized_b = KaitaiStream(BytesIO(bytearray(6)))
        self._io.add_child_stream(_io__raw_sized_b)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (6))
        def handler(parent, _io__raw_sized_b=_io__raw_sized_b):
            self._raw_sized_b = _io__raw_sized_b.to_byte_array()
            if len(self._raw_sized_b) != 6:
                raise kaitaistruct.ConsistencyError(u"raw(sized_b)", 6, len(self._raw_sized_b))
            parent.write_bytes(self._raw_sized_b)
        _io__raw_sized_b.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.sized_b._write__seq(_io__raw_sized_b)
        self.into_b._write__seq(self._io)
        self.into_a_skipped._write__seq(self._io)
        self.into_a._write__seq(self._io)
        self.last_accessor._write__seq(self._io)


    def _check(self):
        if self.sized_a._root != self._root:
            raise kaitaistruct.ConsistencyError(u"sized_a", self._root, self.sized_a._root)
        if self.sized_a._parent != self:
            raise kaitaistruct.ConsistencyError(u"sized_a", self, self.sized_a._parent)
        if self.sized_b._root != self._root:
            raise kaitaistruct.ConsistencyError(u"sized_b", self._root, self.sized_b._root)
        if self.sized_b._parent != self:
            raise kaitaistruct.ConsistencyError(u"sized_b", self, self.sized_b._parent)
        if self.into_b._root != self._root:
            raise kaitaistruct.ConsistencyError(u"into_b", self._root, self.into_b._root)
        if self.into_b._parent != self:
            raise kaitaistruct.ConsistencyError(u"into_b", self, self.into_b._parent)
        if self.into_a_skipped._root != self._root:
            raise kaitaistruct.ConsistencyError(u"into_a_skipped", self._root, self.into_a_skipped._root)
        if self.into_a_skipped._parent != self:
            raise kaitaistruct.ConsistencyError(u"into_a_skipped", self, self.into_a_skipped._parent)
        if self.into_a._root != self._root:
            raise kaitaistruct.ConsistencyError(u"into_a", self._root, self.into_a._root)
        if self.into_a._parent != self:
            raise kaitaistruct.ConsistencyError(u"into_a", self, self.into_a._parent)
        if self.last_accessor._root != self._root:
            raise kaitaistruct.ConsistencyError(u"last_accessor", self._root, self.last_accessor._root)
        if self.last_accessor._parent != self:
            raise kaitaistruct.ConsistencyError(u"last_accessor", self, self.last_accessor._parent)
        if self.a_mid__enabled:
            pass

        if self.b_mid__enabled:
            pass

        self._dirty = False

    class Baz(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(InstanceIoUserEarlier.Baz, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            if self._parent.into_b.inst.last == 89:
                pass
                self.v = self._io.read_u1()

            self._dirty = False


        def _fetch_instances(self):
            pass
            if self._parent.into_b.inst.last == 89:
                pass



        def _write__seq(self, io=None):
            super(InstanceIoUserEarlier.Baz, self)._write__seq(io)
            if self._parent.into_b.inst.last == 89:
                pass
                self._io.write_u1(self.v)



        def _check(self):
            if self._parent.into_b.inst.last == 89:
                pass

            self._dirty = False


    class Foo(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(InstanceIoUserEarlier.Foo, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._should_write_inst = False
            self.inst__enabled = True

        def _read(self):
            self.indicator = self._io.read_u1()
            if  ((self.inst._io.size() != 0) and (self.inst.content == 102)) :
                pass
                self.bar = self._io.read_u1()

            self._dirty = False


        def _fetch_instances(self):
            pass
            if  ((self.inst._io.size() != 0) and (self.inst.content == 102)) :
                pass

            _ = self.inst
            if hasattr(self, '_m_inst'):
                pass
                self._m_inst._fetch_instances()



        def _write__seq(self, io=None):
            super(InstanceIoUserEarlier.Foo, self)._write__seq(io)
            self._should_write_inst = self.inst__enabled
            self._io.write_u1(self.indicator)
            if  ((self.inst._io.size() != 0) and (self.inst.content == 102)) :
                pass
                self._io.write_u1(self.bar)



        def _check(self):
            if self.inst__enabled:
                pass
                if self._m_inst._root != self._root:
                    raise kaitaistruct.ConsistencyError(u"inst", self._root, self._m_inst._root)
                if self._m_inst._parent != self:
                    raise kaitaistruct.ConsistencyError(u"inst", self, self._m_inst._parent)

            self._dirty = False

        @property
        def inst(self):
            if self._should_write_inst:
                self._write_inst()
            if hasattr(self, '_m_inst'):
                return self._m_inst

            if not self.inst__enabled:
                return None

            io = (self._parent.sized_b._io if self.indicator == 202 else self._parent.sized_a._io)
            _pos = io.pos()
            io.seek(1)
            self._raw__m_inst = io.read_bytes((4 if self._io.pos() != 14 else 0))
            _io__raw__m_inst = KaitaiStream(BytesIO(self._raw__m_inst))
            self._m_inst = InstanceIoUserEarlier.Slot(_io__raw__m_inst, self, self._root)
            self._m_inst._read()
            io.seek(_pos)
            return getattr(self, '_m_inst', None)

        @inst.setter
        def inst(self, v):
            self._dirty = True
            self._m_inst = v

        def _write_inst(self):
            self._should_write_inst = False
            io = (self._parent.sized_b._io if self.indicator == 202 else self._parent.sized_a._io)
            _pos = io.pos()
            io.seek(1)
            _io__raw__m_inst = KaitaiStream(BytesIO(bytearray((4 if self._io.pos() != 14 else 0))))
            io.add_child_stream(_io__raw__m_inst)
            _pos2 = io.pos()
            io.seek(io.pos() + ((4 if self._io.pos() != 14 else 0)))
            def handler(parent, _io__raw__m_inst=_io__raw__m_inst):
                self._raw__m_inst = _io__raw__m_inst.to_byte_array()
                if len(self._raw__m_inst) != (4 if self._io.pos() != 14 else 0):
                    raise kaitaistruct.ConsistencyError(u"raw(inst)", (4 if self._io.pos() != 14 else 0), len(self._raw__m_inst))
                parent.write_bytes(self._raw__m_inst)
            _io__raw__m_inst.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
            self._m_inst._write__seq(_io__raw__m_inst)
            io.seek(_pos)


    class Slot(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(InstanceIoUserEarlier.Slot, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._should_write_last = False
            self.last__enabled = True

        def _read(self):
            if self._io.size() != 0:
                pass
                self.content = self._io.read_u1()

            self._dirty = False


        def _fetch_instances(self):
            pass
            if self._io.size() != 0:
                pass

            _ = self.last
            if hasattr(self, '_m_last'):
                pass



        def _write__seq(self, io=None):
            super(InstanceIoUserEarlier.Slot, self)._write__seq(io)
            self._should_write_last = self.last__enabled
            if self._io.size() != 0:
                pass
                self._io.write_u1(self.content)



        def _check(self):
            if self.last__enabled:
                pass

            self._dirty = False

        @property
        def last(self):
            if self._should_write_last:
                self._write_last()
            if hasattr(self, '_m_last'):
                return self._m_last

            if not self.last__enabled:
                return None

            if self._io.size() != 0:
                pass
                _pos = self._io.pos()
                self._io.seek(self._io.size() - 1)
                self._m_last = self._io.read_u1()
                self._io.seek(_pos)

            return getattr(self, '_m_last', None)

        @last.setter
        def last(self, v):
            self._dirty = True
            self._m_last = v

        def _write_last(self):
            self._should_write_last = False
            if self._io.size() != 0:
                pass
                _pos = self._io.pos()
                self._io.seek(self._io.size() - 1)
                self._io.write_u1(self._m_last)
                self._io.seek(_pos)



    @property
    def a_mid(self):
        if self._should_write_a_mid:
            self._write_a_mid()
        if hasattr(self, '_m_a_mid'):
            return self._m_a_mid

        if not self.a_mid__enabled:
            return None

        io = self.into_a.inst._io
        _pos = io.pos()
        io.seek(1)
        self._m_a_mid = io.read_u2le()
        io.seek(_pos)
        return getattr(self, '_m_a_mid', None)

    @a_mid.setter
    def a_mid(self, v):
        self._dirty = True
        self._m_a_mid = v

    def _write_a_mid(self):
        self._should_write_a_mid = False
        io = self.into_a.inst._io
        _pos = io.pos()
        io.seek(1)
        io.write_u2le(self._m_a_mid)
        io.seek(_pos)

    @property
    def b_mid(self):
        if self._should_write_b_mid:
            self._write_b_mid()
        if hasattr(self, '_m_b_mid'):
            return self._m_b_mid

        if not self.b_mid__enabled:
            return None

        io = self.into_b.inst._io
        _pos = io.pos()
        io.seek(1)
        self._m_b_mid = io.read_u2le()
        io.seek(_pos)
        return getattr(self, '_m_b_mid', None)

    @b_mid.setter
    def b_mid(self, v):
        self._dirty = True
        self._m_b_mid = v

    def _write_b_mid(self):
        self._should_write_b_mid = False
        io = self.into_b.inst._io
        _pos = io.pos()
        io.seek(1)
        io.write_u2le(self._m_b_mid)
        io.seek(_pos)


