# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class InstanceIoUser(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.qty_entries = self._io.read_u4le()
        self.entries = []
        for i in range(self.qty_entries):
            _t_entries = InstanceIoUser.Entry(self._io, self, self._root)
            try:
                _t_entries._read()
            finally:
                self.entries.append(_t_entries)

        self._raw_strings = self._io.read_bytes_full()
        _io__raw_strings = KaitaiStream(BytesIO(self._raw_strings))
        self.strings = InstanceIoUser.StringsObj(_io__raw_strings, self, self._root)
        self.strings._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.entries)):
            pass
            self.entries[i]._fetch_instances()

        self.strings._fetch_instances()


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_u4le(self.qty_entries)
        for i in range(len(self.entries)):
            pass
            self.entries[i]._write__seq(self._io)

        _io__raw_strings = KaitaiStream(BytesIO(bytes(self._io.size() - self._io.pos())))
        self._io.add_child_stream(_io__raw_strings)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (self._io.size() - self._io.pos()))
        def handler(parent, _io__raw_strings=_io__raw_strings):
            self._raw_strings = _io__raw_strings.to_byte_array()
            parent.write_bytes(self._raw_strings)
            if not parent.is_eof():
                raise kaitaistruct.ConsistencyError("raw(strings)", 0, parent.size() - parent.pos())
        _io__raw_strings.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.strings._write__seq(_io__raw_strings)


    def _check(self):
        if len(self.entries) != self.qty_entries:
            raise kaitaistruct.ConsistencyError("entries", self.qty_entries, len(self.entries))
        for i in range(len(self.entries)):
            pass
            if self.entries[i]._root != self._root:
                raise kaitaistruct.ConsistencyError("entries", self._root, self.entries[i]._root)
            if self.entries[i]._parent != self:
                raise kaitaistruct.ConsistencyError("entries", self, self.entries[i]._parent)

        if self.strings._root != self._root:
            raise kaitaistruct.ConsistencyError("strings", self._root, self.strings._root)
        if self.strings._parent != self:
            raise kaitaistruct.ConsistencyError("strings", self, self.strings._parent)
        self._dirty = False

    class Entry(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._should_write_name = False
            self.name__enabled = True

        def _read(self):
            self.name_ofs = self._io.read_u4le()
            self.value = self._io.read_u4le()
            self._dirty = False


        def _fetch_instances(self):
            pass
            _ = self.name
            if hasattr(self, '_m_name'):
                pass



        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._should_write_name = self.name__enabled
            self._io.write_u4le(self.name_ofs)
            self._io.write_u4le(self.value)


        def _check(self):
            if self.name__enabled:
                pass
                if KaitaiStream.byte_array_index_of((self._m_name).encode("UTF-8"), 0) != -1:
                    raise kaitaistruct.ConsistencyError("name", -1, KaitaiStream.byte_array_index_of((self._m_name).encode("UTF-8"), 0))

            self._dirty = False

        @property
        def name(self):
            if self._should_write_name:
                self._write_name()
            if hasattr(self, '_m_name'):
                return self._m_name

            if not self.name__enabled:
                return None

            io = self._root.strings._io
            _pos = io.pos()
            io.seek(self.name_ofs)
            self._m_name = (io.read_bytes_term(0, False, True, True)).decode("UTF-8")
            io.seek(_pos)
            return getattr(self, '_m_name', None)

        @name.setter
        def name(self, v):
            self._dirty = True
            self._m_name = v

        def _write_name(self):
            self._should_write_name = False
            io = self._root.strings._io
            _pos = io.pos()
            io.seek(self.name_ofs)
            io.write_bytes((self._m_name).encode("UTF-8"))
            io.write_u1(0)
            io.seek(_pos)


    class StringsObj(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.str = []
            i = 0
            while not self._io.is_eof():
                self.str.append((self._io.read_bytes_term(0, False, True, True)).decode("UTF-8"))
                i += 1

            self._dirty = False


        def _fetch_instances(self):
            pass
            for i in range(len(self.str)):
                pass



        def _write__seq(self, io=None):
            super()._write__seq(io)
            for i in range(len(self.str)):
                pass
                if self._io.is_eof():
                    raise kaitaistruct.ConsistencyError("str", 0, self._io.size() - self._io.pos())
                self._io.write_bytes((self.str[i]).encode("UTF-8"))
                self._io.write_u1(0)

            if not self._io.is_eof():
                raise kaitaistruct.ConsistencyError("str", 0, self._io.size() - self._io.pos())


        def _check(self):
            for i in range(len(self.str)):
                pass
                if KaitaiStream.byte_array_index_of((self.str[i]).encode("UTF-8"), 0) != -1:
                    raise kaitaistruct.ConsistencyError("str", -1, KaitaiStream.byte_array_index_of((self.str[i]).encode("UTF-8"), 0))

            self._dirty = False



