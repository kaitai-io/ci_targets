# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class DefaultEndianExprException(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(DefaultEndianExprException, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.docs = []
        i = 0
        while not self._io.is_eof():
            _t_docs = DefaultEndianExprException.Doc(self._io, self, self._root)
            try:
                _t_docs._read()
            finally:
                self.docs.append(_t_docs)
            i += 1

        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.docs)):
            pass
            self.docs[i]._fetch_instances()



    def _write__seq(self, io=None):
        super(DefaultEndianExprException, self)._write__seq(io)
        for i in range(len(self.docs)):
            pass
            if self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"docs", self._io.size() - self._io.pos(), 0)
            self.docs[i]._write__seq(self._io)

        if not self._io.is_eof():
            raise kaitaistruct.ConsistencyError(u"docs", self._io.size() - self._io.pos(), 0)


    def _check(self):
        for i in range(len(self.docs)):
            pass
            if self.docs[i]._root != self._root:
                raise kaitaistruct.ConsistencyError(u"docs", self.docs[i]._root, self._root)
            if self.docs[i]._parent != self:
                raise kaitaistruct.ConsistencyError(u"docs", self.docs[i]._parent, self)

        self._dirty = False

    class Doc(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(DefaultEndianExprException.Doc, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.indicator = self._io.read_bytes(2)
            self.main = DefaultEndianExprException.Doc.MainObj(self._io, self, self._root)
            self.main._read()
            self._dirty = False


        def _fetch_instances(self):
            pass
            self.main._fetch_instances()


        def _write__seq(self, io=None):
            super(DefaultEndianExprException.Doc, self)._write__seq(io)
            self._io.write_bytes(self.indicator)
            self.main._write__seq(self._io)


        def _check(self):
            if len(self.indicator) != 2:
                raise kaitaistruct.ConsistencyError(u"indicator", len(self.indicator), 2)
            if self.main._root != self._root:
                raise kaitaistruct.ConsistencyError(u"main", self.main._root, self._root)
            if self.main._parent != self:
                raise kaitaistruct.ConsistencyError(u"main", self.main._parent, self)
            self._dirty = False

        class MainObj(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                super(DefaultEndianExprException.Doc.MainObj, self).__init__(_io)
                self._parent = _parent
                self._root = _root

            def _read(self):
                _on = self._parent.indicator
                if _on == b"\x49\x49":
                    pass
                    self._is_le = True
                elif _on == b"\x4D\x4D":
                    pass
                    self._is_le = False
                if not hasattr(self, '_is_le'):
                    raise kaitaistruct.UndecidedEndiannessError("/types/doc/types/main_obj")
                elif self._is_le == True:
                    self._read_le()
                elif self._is_le == False:
                    self._read_be()
                self._dirty = False

            def _read_le(self):
                self.some_int = self._io.read_u4le()
                self.some_int_be = self._io.read_u2be()
                self.some_int_le = self._io.read_u2le()
                self._dirty = False

            def _read_be(self):
                self.some_int = self._io.read_u4be()
                self.some_int_be = self._io.read_u2be()
                self.some_int_le = self._io.read_u2le()
                self._dirty = False


            def _fetch_instances(self):
                pass


            def _write__seq(self, io=None):
                super(DefaultEndianExprException.Doc.MainObj, self)._write__seq(io)
                if not hasattr(self, '_is_le'):
                    raise kaitaistruct.UndecidedEndiannessError("/types/doc/types/main_obj")
                elif self._is_le == True:
                    self._write__seq_le()
                elif self._is_le == False:
                    self._write__seq_be()


            def _write__seq_le(self):
                self._io.write_u4le(self.some_int)
                self._io.write_u2be(self.some_int_be)
                self._io.write_u2le(self.some_int_le)


            def _write__seq_be(self):
                self._io.write_u4be(self.some_int)
                self._io.write_u2be(self.some_int_be)
                self._io.write_u2le(self.some_int_le)


            def _check(self):
                self._dirty = False




