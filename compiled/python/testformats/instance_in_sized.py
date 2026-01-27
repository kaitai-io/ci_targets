# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class InstanceInSized(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self._raw_cont = self._io.read_bytes(16)
        _io__raw_cont = KaitaiStream(BytesIO(self._raw_cont))
        self.cont = InstanceInSized.Wrapper(_io__raw_cont, self, self._root)


    def _fetch_instances(self):
        pass
        self.cont._fetch_instances()

    class Bar(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.seq_f = self._io.read_u1()


        def _fetch_instances(self):
            pass
            _ = self.inst
            if hasattr(self, '_m_inst'):
                pass


        @property
        def inst(self):
            if hasattr(self, '_m_inst'):
                return self._m_inst

            _pos = self._io.pos()
            self._io.seek(4 + 1)
            self._m_inst = self._io.read_bytes(3)
            self._io.seek(_pos)
            return getattr(self, '_m_inst', None)


    class Baz(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.seq_f = self._io.read_u1()


        def _fetch_instances(self):
            pass
            _ = self.inst
            if hasattr(self, '_m_inst'):
                pass


        @property
        def inst(self):
            if hasattr(self, '_m_inst'):
                return self._m_inst

            _pos = self._io.pos()
            self._io.seek(8 + 1)
            self._m_inst = self._io.read_bytes(3)
            self._io.seek(_pos)
            return getattr(self, '_m_inst', None)


    class Qux(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            if self.inst_invoked > 0:
                pass
                self.seq_f = self._io.read_u1()



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


        @property
        def inst_invoked(self):
            if hasattr(self, '_m_inst_invoked'):
                return self._m_inst_invoked

            _pos = self._io.pos()
            self._io.seek(self._io.pos() + 1)
            self._m_inst_invoked = self._io.read_u1()
            self._io.seek(_pos)
            return getattr(self, '_m_inst_invoked', None)

        @property
        def inst_unused_by_seq(self):
            if hasattr(self, '_m_inst_unused_by_seq'):
                return self._m_inst_unused_by_seq

            _pos = self._io.pos()
            self._io.seek(self._io.pos() + 1)
            self._m_inst_unused_by_seq = self._io.read_bytes(2)
            self._io.seek(_pos)
            return getattr(self, '_m_inst_unused_by_seq', None)


    class Wrapper(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self._raw_seq_sized = self._io.read_bytes(4)
            _io__raw_seq_sized = KaitaiStream(BytesIO(self._raw_seq_sized))
            self.seq_sized = InstanceInSized.Qux(_io__raw_seq_sized, self, self._root)
            self.seq_in_stream = InstanceInSized.Bar(self._io, self, self._root)


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


        @property
        def inst_in_stream(self):
            if hasattr(self, '_m_inst_in_stream'):
                return self._m_inst_in_stream

            _pos = self._io.pos()
            self._io.seek(self._io.pos() + 3)
            self._m_inst_in_stream = InstanceInSized.Baz(self._io, self, self._root)
            self._io.seek(_pos)
            return getattr(self, '_m_inst_in_stream', None)

        @property
        def inst_sized(self):
            if hasattr(self, '_m_inst_sized'):
                return self._m_inst_sized

            _pos = self._io.pos()
            self._io.seek(self._io.pos() + 7)
            self._raw__m_inst_sized = self._io.read_bytes(4)
            _io__raw__m_inst_sized = KaitaiStream(BytesIO(self._raw__m_inst_sized))
            self._m_inst_sized = InstanceInSized.Qux(_io__raw__m_inst_sized, self, self._root)
            self._io.seek(_pos)
            return getattr(self, '_m_inst_sized', None)



