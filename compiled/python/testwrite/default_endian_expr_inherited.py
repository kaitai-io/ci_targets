# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class DefaultEndianExprInherited(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.docs = []
        i = 0
        while not self._io.is_eof():
            _t_docs = DefaultEndianExprInherited.Doc(self._io, self, self._root)
            try:
                _t_docs._read()
            finally:
                self.docs.append(_t_docs)
            i += 1



    def _fetch_instances(self):
        pass
        for i in range(len(self.docs)):
            pass
            self.docs[i]._fetch_instances()



    def _write__seq(self, io=None):
        super(DefaultEndianExprInherited, self)._write__seq(io)
        for i in range(len(self.docs)):
            pass
            if self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"docs", self._io.size() - self._io.pos(), 0)
            self.docs[i]._write__seq(self._io)

        if not self._io.is_eof():
            raise kaitaistruct.ConsistencyError(u"docs", self._io.size() - self._io.pos(), 0)


    def _check(self):
        pass
        for i in range(len(self.docs)):
            pass
            if self.docs[i]._root != self._root:
                raise kaitaistruct.ConsistencyError(u"docs", self.docs[i]._root, self._root)
            if self.docs[i]._parent != self:
                raise kaitaistruct.ConsistencyError(u"docs", self.docs[i]._parent, self)


    class Doc(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.indicator = self._io.read_bytes(2)
            self.main = DefaultEndianExprInherited.Doc.MainObj(self._io, self, self._root)
            self.main._read()


        def _fetch_instances(self):
            pass
            self.main._fetch_instances()


        def _write__seq(self, io=None):
            super(DefaultEndianExprInherited.Doc, self)._write__seq(io)
            self._io.write_bytes(self.indicator)
            self.main._write__seq(self._io)


        def _check(self):
            pass
            if len(self.indicator) != 2:
                raise kaitaistruct.ConsistencyError(u"indicator", len(self.indicator), 2)
            if self.main._root != self._root:
                raise kaitaistruct.ConsistencyError(u"main", self.main._root, self._root)
            if self.main._parent != self:
                raise kaitaistruct.ConsistencyError(u"main", self.main._parent, self)

        class MainObj(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root

            def _read(self):
                _on = self._parent.indicator
                if _on == b"\x49\x49":
                    pass
                    self._is_le = True
                else:
                    pass
                    self._is_le = False
                if not hasattr(self, '_is_le'):
                    raise kaitaistruct.UndecidedEndiannessError("/types/doc/types/main_obj")
                elif self._is_le == True:
                    self._read_le()
                elif self._is_le == False:
                    self._read_be()

            def _read_le(self):
                self.insides = DefaultEndianExprInherited.Doc.MainObj.SubObj(self._io, self, self._root, self._is_le)
                self.insides._read()

            def _read_be(self):
                self.insides = DefaultEndianExprInherited.Doc.MainObj.SubObj(self._io, self, self._root, self._is_le)
                self.insides._read()


            def _fetch_instances(self):
                pass
                self.insides._fetch_instances()


            def _write__seq(self, io=None):
                super(DefaultEndianExprInherited.Doc.MainObj, self)._write__seq(io)
                if not hasattr(self, '_is_le'):
                    raise kaitaistruct.UndecidedEndiannessError("/types/doc/types/main_obj")
                elif self._is_le == True:
                    self._write__seq_le()
                elif self._is_le == False:
                    self._write__seq_be()


            def _write__seq_le(self):
                self.insides._write__seq(self._io)


            def _write__seq_be(self):
                self.insides._write__seq(self._io)


            def _check(self):
                pass
                if self.insides._root != self._root:
                    raise kaitaistruct.ConsistencyError(u"insides", self.insides._root, self._root)
                if self.insides._parent != self:
                    raise kaitaistruct.ConsistencyError(u"insides", self.insides._parent, self)

            class SubObj(ReadWriteKaitaiStruct):
                def __init__(self, _io=None, _parent=None, _root=None, _is_le=None):
                    self._io = _io
                    self._parent = _parent
                    self._root = _root
                    self._is_le = _is_le

                def _read(self):
                    if not hasattr(self, '_is_le'):
                        raise kaitaistruct.UndecidedEndiannessError("/types/doc/types/main_obj/types/sub_obj")
                    elif self._is_le == True:
                        self._read_le()
                    elif self._is_le == False:
                        self._read_be()

                def _read_le(self):
                    self.some_int = self._io.read_u4le()
                    self.more = DefaultEndianExprInherited.Doc.MainObj.SubObj.SubsubObj(self._io, self, self._root, self._is_le)
                    self.more._read()

                def _read_be(self):
                    self.some_int = self._io.read_u4be()
                    self.more = DefaultEndianExprInherited.Doc.MainObj.SubObj.SubsubObj(self._io, self, self._root, self._is_le)
                    self.more._read()


                def _fetch_instances(self):
                    pass
                    self.more._fetch_instances()


                def _write__seq(self, io=None):
                    super(DefaultEndianExprInherited.Doc.MainObj.SubObj, self)._write__seq(io)
                    if not hasattr(self, '_is_le'):
                        raise kaitaistruct.UndecidedEndiannessError("/types/doc/types/main_obj/types/sub_obj")
                    elif self._is_le == True:
                        self._write__seq_le()
                    elif self._is_le == False:
                        self._write__seq_be()


                def _write__seq_le(self):
                    self._io.write_u4le(self.some_int)
                    self.more._write__seq(self._io)


                def _write__seq_be(self):
                    self._io.write_u4be(self.some_int)
                    self.more._write__seq(self._io)


                def _check(self):
                    pass
                    if self.more._root != self._root:
                        raise kaitaistruct.ConsistencyError(u"more", self.more._root, self._root)
                    if self.more._parent != self:
                        raise kaitaistruct.ConsistencyError(u"more", self.more._parent, self)

                class SubsubObj(ReadWriteKaitaiStruct):
                    def __init__(self, _io=None, _parent=None, _root=None, _is_le=None):
                        self._io = _io
                        self._parent = _parent
                        self._root = _root
                        self._is_le = _is_le
                        self._should_write_some_inst = False
                        self.some_inst__to_write = True

                    def _read(self):
                        if not hasattr(self, '_is_le'):
                            raise kaitaistruct.UndecidedEndiannessError("/types/doc/types/main_obj/types/sub_obj/types/subsub_obj")
                        elif self._is_le == True:
                            self._read_le()
                        elif self._is_le == False:
                            self._read_be()

                    def _read_le(self):
                        self.some_int1 = self._io.read_u2le()
                        self.some_int2 = self._io.read_u2le()

                    def _read_be(self):
                        self.some_int1 = self._io.read_u2be()
                        self.some_int2 = self._io.read_u2be()


                    def _fetch_instances(self):
                        pass
                        _ = self.some_inst


                    def _write__seq(self, io=None):
                        super(DefaultEndianExprInherited.Doc.MainObj.SubObj.SubsubObj, self)._write__seq(io)
                        if not hasattr(self, '_is_le'):
                            raise kaitaistruct.UndecidedEndiannessError("/types/doc/types/main_obj/types/sub_obj/types/subsub_obj")
                        elif self._is_le == True:
                            self._write__seq_le()
                        elif self._is_le == False:
                            self._write__seq_be()


                    def _write__seq_le(self):
                        self._should_write_some_inst = self.some_inst__to_write
                        self._io.write_u2le(self.some_int1)
                        self._io.write_u2le(self.some_int2)


                    def _write__seq_be(self):
                        self._should_write_some_inst = self.some_inst__to_write
                        self._io.write_u2be(self.some_int1)
                        self._io.write_u2be(self.some_int2)


                    def _check(self):
                        pass

                    @property
                    def some_inst(self):
                        if self._should_write_some_inst:
                            self._write_some_inst()
                        if hasattr(self, '_m_some_inst'):
                            return self._m_some_inst

                        _pos = self._io.pos()
                        self._io.seek(2)
                        if self._is_le:
                            self._m_some_inst = self._io.read_u4le()
                        else:
                            self._m_some_inst = self._io.read_u4be()
                        self._io.seek(_pos)
                        return getattr(self, '_m_some_inst', None)

                    @some_inst.setter
                    def some_inst(self, v):
                        self._m_some_inst = v

                    def _write_some_inst(self):
                        self._should_write_some_inst = False
                        _pos = self._io.pos()
                        self._io.seek(2)
                        if self._is_le:
                            self._io.write_u4le(self._m_some_inst)
                        else:
                            self._io.write_u4be(self._m_some_inst)
                        self._io.seek(_pos)


                    def _check_some_inst(self):
                        pass






