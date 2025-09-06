# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class InstanceUserArray(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(InstanceUserArray, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._should_write_user_entries = False
        self.user_entries__enabled = True

    def _read(self):
        self.ofs = self._io.read_u4le()
        self.entry_size = self._io.read_u4le()
        self.qty_entries = self._io.read_u4le()
        self._dirty = False


    def _fetch_instances(self):
        pass
        _ = self.user_entries
        if hasattr(self, '_m_user_entries'):
            pass
            for i in range(len(self._m_user_entries)):
                pass
                self._m_user_entries[i]._fetch_instances()




    def _write__seq(self, io=None):
        super(InstanceUserArray, self)._write__seq(io)
        self._should_write_user_entries = self.user_entries__enabled
        self._io.write_u4le(self.ofs)
        self._io.write_u4le(self.entry_size)
        self._io.write_u4le(self.qty_entries)


    def _check(self):
        if self.user_entries__enabled:
            pass
            if self.ofs > 0:
                pass
                if len(self._m_user_entries) != self.qty_entries:
                    raise kaitaistruct.ConsistencyError(u"user_entries", len(self._m_user_entries), self.qty_entries)
                for i in range(len(self._m_user_entries)):
                    pass
                    if self._m_user_entries[i]._root != self._root:
                        raise kaitaistruct.ConsistencyError(u"user_entries", self._m_user_entries[i]._root, self._root)
                    if self._m_user_entries[i]._parent != self:
                        raise kaitaistruct.ConsistencyError(u"user_entries", self._m_user_entries[i]._parent, self)



        self._dirty = False

    class Entry(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(InstanceUserArray.Entry, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.word1 = self._io.read_u2le()
            self.word2 = self._io.read_u2le()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(InstanceUserArray.Entry, self)._write__seq(io)
            self._io.write_u2le(self.word1)
            self._io.write_u2le(self.word2)


        def _check(self):
            self._dirty = False


    @property
    def user_entries(self):
        if self._should_write_user_entries:
            self._write_user_entries()
        if hasattr(self, '_m_user_entries'):
            return self._m_user_entries

        if not self.user_entries__enabled:
            return None

        if self.ofs > 0:
            pass
            _pos = self._io.pos()
            self._io.seek(self.ofs)
            self._raw__m_user_entries = []
            self._m_user_entries = []
            for i in range(self.qty_entries):
                self._raw__m_user_entries.append(self._io.read_bytes(self.entry_size))
                _io__raw__m_user_entries = KaitaiStream(BytesIO(self._raw__m_user_entries[i]))
                _t__m_user_entries = InstanceUserArray.Entry(_io__raw__m_user_entries, self, self._root)
                try:
                    _t__m_user_entries._read()
                finally:
                    self._m_user_entries.append(_t__m_user_entries)

            self._io.seek(_pos)

        return getattr(self, '_m_user_entries', None)

    @user_entries.setter
    def user_entries(self, v):
        self._dirty = True
        self._m_user_entries = v

    def _write_user_entries(self):
        self._should_write_user_entries = False
        if self.ofs > 0:
            pass
            _pos = self._io.pos()
            self._io.seek(self.ofs)
            self._raw__m_user_entries = []
            for i in range(len(self._m_user_entries)):
                pass
                _io__raw__m_user_entries = KaitaiStream(BytesIO(bytearray(self.entry_size)))
                self._io.add_child_stream(_io__raw__m_user_entries)
                _pos2 = self._io.pos()
                self._io.seek(self._io.pos() + (self.entry_size))
                def handler(parent, _io__raw__m_user_entries=_io__raw__m_user_entries, i=i):
                    self._raw__m_user_entries.append(_io__raw__m_user_entries.to_byte_array())
                    if len(self._raw__m_user_entries[i]) != self.entry_size:
                        raise kaitaistruct.ConsistencyError(u"raw(user_entries)", len(self._raw__m_user_entries[i]), self.entry_size)
                    parent.write_bytes(self._raw__m_user_entries[i])
                _io__raw__m_user_entries.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
                self._m_user_entries[i]._write__seq(_io__raw__m_user_entries)

            self._io.seek(_pos)



