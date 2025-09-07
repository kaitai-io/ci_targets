# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class InstanceInSized(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(InstanceInSized, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw_cont = self._io.read_bytes(16)
        _io__raw_cont = KaitaiStream(BytesIO(self._raw_cont))
        self.cont = InstanceInSized.Wrapper(_io__raw_cont, self, self._root)
        self.cont._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.cont._fetch_instances()


    def _write__seq(self, io=None):
        super(InstanceInSized, self)._write__seq(io)
        _io__raw_cont = KaitaiStream(BytesIO(bytearray(16)))
        self._io.add_child_stream(_io__raw_cont)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (16))
        def handler(parent, _io__raw_cont=_io__raw_cont):
            self._raw_cont = _io__raw_cont.to_byte_array()
            if len(self._raw_cont) != 16:
                raise kaitaistruct.ConsistencyError(u"raw(cont)", 16, len(self._raw_cont))
            parent.write_bytes(self._raw_cont)
        _io__raw_cont.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.cont._write__seq(_io__raw_cont)


    def _check(self):
        if self.cont._root != self._root:
            raise kaitaistruct.ConsistencyError(u"cont", self._root, self.cont._root)
        if self.cont._parent != self:
            raise kaitaistruct.ConsistencyError(u"cont", self, self.cont._parent)
        self._dirty = False

    class Bar(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(InstanceInSized.Bar, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._should_write_inst = False
            self.inst__enabled = True

        def _read(self):
            self.seq_f = self._io.read_u1()
            self._dirty = False


        def _fetch_instances(self):
            pass
            _ = self.inst
            if hasattr(self, '_m_inst'):
                pass



        def _write__seq(self, io=None):
            super(InstanceInSized.Bar, self)._write__seq(io)
            self._should_write_inst = self.inst__enabled
            self._io.write_u1(self.seq_f)


        def _check(self):
            if self.inst__enabled:
                pass
                if len(self._m_inst) != 3:
                    raise kaitaistruct.ConsistencyError(u"inst", 3, len(self._m_inst))

            self._dirty = False

        @property
        def inst(self):
            if self._should_write_inst:
                self._write_inst()
            if hasattr(self, '_m_inst'):
                return self._m_inst

            if not self.inst__enabled:
                return None

            _pos = self._io.pos()
            self._io.seek(4 + 1)
            self._m_inst = self._io.read_bytes(3)
            self._io.seek(_pos)
            return getattr(self, '_m_inst', None)

        @inst.setter
        def inst(self, v):
            self._dirty = True
            self._m_inst = v

        def _write_inst(self):
            self._should_write_inst = False
            _pos = self._io.pos()
            self._io.seek(4 + 1)
            self._io.write_bytes(self._m_inst)
            self._io.seek(_pos)


    class Baz(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(InstanceInSized.Baz, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._should_write_inst = False
            self.inst__enabled = True

        def _read(self):
            self.seq_f = self._io.read_u1()
            self._dirty = False


        def _fetch_instances(self):
            pass
            _ = self.inst
            if hasattr(self, '_m_inst'):
                pass



        def _write__seq(self, io=None):
            super(InstanceInSized.Baz, self)._write__seq(io)
            self._should_write_inst = self.inst__enabled
            self._io.write_u1(self.seq_f)


        def _check(self):
            if self.inst__enabled:
                pass
                if len(self._m_inst) != 3:
                    raise kaitaistruct.ConsistencyError(u"inst", 3, len(self._m_inst))

            self._dirty = False

        @property
        def inst(self):
            if self._should_write_inst:
                self._write_inst()
            if hasattr(self, '_m_inst'):
                return self._m_inst

            if not self.inst__enabled:
                return None

            _pos = self._io.pos()
            self._io.seek(8 + 1)
            self._m_inst = self._io.read_bytes(3)
            self._io.seek(_pos)
            return getattr(self, '_m_inst', None)

        @inst.setter
        def inst(self, v):
            self._dirty = True
            self._m_inst = v

        def _write_inst(self):
            self._should_write_inst = False
            _pos = self._io.pos()
            self._io.seek(8 + 1)
            self._io.write_bytes(self._m_inst)
            self._io.seek(_pos)


    class Qux(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(InstanceInSized.Qux, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._should_write_inst_invoked = False
            self.inst_invoked__enabled = True
            self._should_write_inst_unused_by_seq = False
            self.inst_unused_by_seq__enabled = True

        def _read(self):
            if self.inst_invoked > 0:
                pass
                self.seq_f = self._io.read_u1()

            self._dirty = False


        def _fetch_instances(self):
            pass
            if self.inst_invoked > 0:
                pass

            _ = self.inst_invoked
            if hasattr(self, '_m_inst_invoked'):
                pass

            _ = self.inst_unused_by_seq
            if hasattr(self, '_m_inst_unused_by_seq'):
                pass



        def _write__seq(self, io=None):
            super(InstanceInSized.Qux, self)._write__seq(io)
            self._should_write_inst_invoked = self.inst_invoked__enabled
            self._should_write_inst_unused_by_seq = self.inst_unused_by_seq__enabled
            if self.inst_invoked > 0:
                pass
                self._io.write_u1(self.seq_f)



        def _check(self):
            if self.inst_invoked__enabled:
                pass

            if self.inst_unused_by_seq__enabled:
                pass
                if len(self._m_inst_unused_by_seq) != 2:
                    raise kaitaistruct.ConsistencyError(u"inst_unused_by_seq", 2, len(self._m_inst_unused_by_seq))

            self._dirty = False

        @property
        def inst_invoked(self):
            if self._should_write_inst_invoked:
                self._write_inst_invoked()
            if hasattr(self, '_m_inst_invoked'):
                return self._m_inst_invoked

            if not self.inst_invoked__enabled:
                return None

            _pos = self._io.pos()
            self._io.seek(self._io.pos() + 1)
            self._m_inst_invoked = self._io.read_u1()
            self._io.seek(_pos)
            return getattr(self, '_m_inst_invoked', None)

        @inst_invoked.setter
        def inst_invoked(self, v):
            self._dirty = True
            self._m_inst_invoked = v

        def _write_inst_invoked(self):
            self._should_write_inst_invoked = False
            _pos = self._io.pos()
            self._io.seek(self._io.pos() + 1)
            self._io.write_u1(self._m_inst_invoked)
            self._io.seek(_pos)

        @property
        def inst_unused_by_seq(self):
            if self._should_write_inst_unused_by_seq:
                self._write_inst_unused_by_seq()
            if hasattr(self, '_m_inst_unused_by_seq'):
                return self._m_inst_unused_by_seq

            if not self.inst_unused_by_seq__enabled:
                return None

            _pos = self._io.pos()
            self._io.seek(self._io.pos() + 1)
            self._m_inst_unused_by_seq = self._io.read_bytes(2)
            self._io.seek(_pos)
            return getattr(self, '_m_inst_unused_by_seq', None)

        @inst_unused_by_seq.setter
        def inst_unused_by_seq(self, v):
            self._dirty = True
            self._m_inst_unused_by_seq = v

        def _write_inst_unused_by_seq(self):
            self._should_write_inst_unused_by_seq = False
            _pos = self._io.pos()
            self._io.seek(self._io.pos() + 1)
            self._io.write_bytes(self._m_inst_unused_by_seq)
            self._io.seek(_pos)


    class Wrapper(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(InstanceInSized.Wrapper, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._should_write_inst_in_stream = False
            self.inst_in_stream__enabled = True
            self._should_write_inst_sized = False
            self.inst_sized__enabled = True

        def _read(self):
            self._raw_seq_sized = self._io.read_bytes(4)
            _io__raw_seq_sized = KaitaiStream(BytesIO(self._raw_seq_sized))
            self.seq_sized = InstanceInSized.Qux(_io__raw_seq_sized, self, self._root)
            self.seq_sized._read()
            self.seq_in_stream = InstanceInSized.Bar(self._io, self, self._root)
            self.seq_in_stream._read()
            self._dirty = False


        def _fetch_instances(self):
            pass
            self.seq_sized._fetch_instances()
            self.seq_in_stream._fetch_instances()
            _ = self.inst_in_stream
            if hasattr(self, '_m_inst_in_stream'):
                pass
                self._m_inst_in_stream._fetch_instances()

            _ = self.inst_sized
            if hasattr(self, '_m_inst_sized'):
                pass
                self._m_inst_sized._fetch_instances()



        def _write__seq(self, io=None):
            super(InstanceInSized.Wrapper, self)._write__seq(io)
            self._should_write_inst_in_stream = self.inst_in_stream__enabled
            self._should_write_inst_sized = self.inst_sized__enabled
            _io__raw_seq_sized = KaitaiStream(BytesIO(bytearray(4)))
            self._io.add_child_stream(_io__raw_seq_sized)
            _pos2 = self._io.pos()
            self._io.seek(self._io.pos() + (4))
            def handler(parent, _io__raw_seq_sized=_io__raw_seq_sized):
                self._raw_seq_sized = _io__raw_seq_sized.to_byte_array()
                if len(self._raw_seq_sized) != 4:
                    raise kaitaistruct.ConsistencyError(u"raw(seq_sized)", 4, len(self._raw_seq_sized))
                parent.write_bytes(self._raw_seq_sized)
            _io__raw_seq_sized.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
            self.seq_sized._write__seq(_io__raw_seq_sized)
            self.seq_in_stream._write__seq(self._io)


        def _check(self):
            if self.seq_sized._root != self._root:
                raise kaitaistruct.ConsistencyError(u"seq_sized", self._root, self.seq_sized._root)
            if self.seq_sized._parent != self:
                raise kaitaistruct.ConsistencyError(u"seq_sized", self, self.seq_sized._parent)
            if self.seq_in_stream._root != self._root:
                raise kaitaistruct.ConsistencyError(u"seq_in_stream", self._root, self.seq_in_stream._root)
            if self.seq_in_stream._parent != self:
                raise kaitaistruct.ConsistencyError(u"seq_in_stream", self, self.seq_in_stream._parent)
            if self.inst_in_stream__enabled:
                pass
                if self._m_inst_in_stream._root != self._root:
                    raise kaitaistruct.ConsistencyError(u"inst_in_stream", self._root, self._m_inst_in_stream._root)
                if self._m_inst_in_stream._parent != self:
                    raise kaitaistruct.ConsistencyError(u"inst_in_stream", self, self._m_inst_in_stream._parent)

            if self.inst_sized__enabled:
                pass
                if self._m_inst_sized._root != self._root:
                    raise kaitaistruct.ConsistencyError(u"inst_sized", self._root, self._m_inst_sized._root)
                if self._m_inst_sized._parent != self:
                    raise kaitaistruct.ConsistencyError(u"inst_sized", self, self._m_inst_sized._parent)

            self._dirty = False

        @property
        def inst_in_stream(self):
            if self._should_write_inst_in_stream:
                self._write_inst_in_stream()
            if hasattr(self, '_m_inst_in_stream'):
                return self._m_inst_in_stream

            if not self.inst_in_stream__enabled:
                return None

            _pos = self._io.pos()
            self._io.seek(self._io.pos() + 3)
            self._m_inst_in_stream = InstanceInSized.Baz(self._io, self, self._root)
            self._m_inst_in_stream._read()
            self._io.seek(_pos)
            return getattr(self, '_m_inst_in_stream', None)

        @inst_in_stream.setter
        def inst_in_stream(self, v):
            self._dirty = True
            self._m_inst_in_stream = v

        def _write_inst_in_stream(self):
            self._should_write_inst_in_stream = False
            _pos = self._io.pos()
            self._io.seek(self._io.pos() + 3)
            self._m_inst_in_stream._write__seq(self._io)
            self._io.seek(_pos)

        @property
        def inst_sized(self):
            if self._should_write_inst_sized:
                self._write_inst_sized()
            if hasattr(self, '_m_inst_sized'):
                return self._m_inst_sized

            if not self.inst_sized__enabled:
                return None

            _pos = self._io.pos()
            self._io.seek(self._io.pos() + 7)
            self._raw__m_inst_sized = self._io.read_bytes(4)
            _io__raw__m_inst_sized = KaitaiStream(BytesIO(self._raw__m_inst_sized))
            self._m_inst_sized = InstanceInSized.Qux(_io__raw__m_inst_sized, self, self._root)
            self._m_inst_sized._read()
            self._io.seek(_pos)
            return getattr(self, '_m_inst_sized', None)

        @inst_sized.setter
        def inst_sized(self, v):
            self._dirty = True
            self._m_inst_sized = v

        def _write_inst_sized(self):
            self._should_write_inst_sized = False
            _pos = self._io.pos()
            self._io.seek(self._io.pos() + 7)
            _io__raw__m_inst_sized = KaitaiStream(BytesIO(bytearray(4)))
            self._io.add_child_stream(_io__raw__m_inst_sized)
            _pos2 = self._io.pos()
            self._io.seek(self._io.pos() + (4))
            def handler(parent, _io__raw__m_inst_sized=_io__raw__m_inst_sized):
                self._raw__m_inst_sized = _io__raw__m_inst_sized.to_byte_array()
                if len(self._raw__m_inst_sized) != 4:
                    raise kaitaistruct.ConsistencyError(u"raw(inst_sized)", 4, len(self._raw__m_inst_sized))
                parent.write_bytes(self._raw__m_inst_sized)
            _io__raw__m_inst_sized.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
            self._m_inst_sized._write__seq(_io__raw__m_inst_sized)
            self._io.seek(_pos)



