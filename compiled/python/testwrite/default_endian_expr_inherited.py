# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class DefaultEndianExprInherited(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
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

        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.docs)):
            pass
            self.docs[i]._fetch_instances()



    def _write__seq(self, io=None):
        super()._write__seq(io)
        for i in range(len(self.docs)):
            pass
            if self._io.is_eof():
                raise kaitaistruct.ConsistencyError("docs", 0, self._io.size() - self._io.pos())
            self.docs[i]._write__seq(self._io)

        if not self._io.is_eof():
            raise kaitaistruct.ConsistencyError("docs", 0, self._io.size() - self._io.pos())


    def _check(self):
        for i in range(len(self.docs)):
            pass
            if self.docs[i]._root != self._root:
                raise kaitaistruct.ConsistencyError("docs", self._root, self.docs[i]._root)
            if self.docs[i]._parent != self:
                raise kaitaistruct.ConsistencyError("docs", self, self.docs[i]._parent)

        self._dirty = False

    class Doc(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.indicator = self._io.read_bytes(2)
            self.main = DefaultEndianExprInherited.Doc.MainObj(self._io, self, self._root)
            self.main._read()
            self._dirty = False


        def _fetch_instances(self):
            pass
            self.main._fetch_instances()


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_bytes(self.indicator)
            self.main._write__seq(self._io)


        def _check(self):
            if len(self.indicator) != 2:
                raise kaitaistruct.ConsistencyError("indicator", 2, len(self.indicator))
            if self.main._root != self._root:
                raise kaitaistruct.ConsistencyError("main", self._root, self.main._root)
            if self.main._parent != self:
                raise kaitaistruct.ConsistencyError("main", self, self.main._parent)
            self._dirty = False

        class MainObj(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                super().__init__(_io)
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
                self._dirty = False

            def _read_le(self):
                self.insides = DefaultEndianExprInherited.Doc.MainObj.SubObj(self._io, self, self._root, self._is_le)
                self.insides._read()
                self._dirty = False

            def _read_be(self):
                self.insides = DefaultEndianExprInherited.Doc.MainObj.SubObj(self._io, self, self._root, self._is_le)
                self.insides._read()
                self._dirty = False


            def _fetch_instances(self):
                pass
                self.insides._fetch_instances()


            def _write__seq(self, io=None):
                super()._write__seq(io)
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
                if self.insides._root != self._root:
                    raise kaitaistruct.ConsistencyError("insides", self._root, self.insides._root)
                if self.insides._parent != self:
                    raise kaitaistruct.ConsistencyError("insides", self, self.insides._parent)
                self._dirty = False

            class SubObj(ReadWriteKaitaiStruct):
                def __init__(self, _io=None, _parent=None, _root=None, _is_le=None):
                    super().__init__(_io)
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
                    self._dirty = False

                def _read_le(self):
                    self.some_int = self._io.read_u4le()
                    self.more = DefaultEndianExprInherited.Doc.MainObj.SubObj.SubsubObj(self._io, self, self._root, self._is_le)
                    self.more._read()
                    self._dirty = False

                def _read_be(self):
                    self.some_int = self._io.read_u4be()
                    self.more = DefaultEndianExprInherited.Doc.MainObj.SubObj.SubsubObj(self._io, self, self._root, self._is_le)
                    self.more._read()
                    self._dirty = False


                def _fetch_instances(self):
                    pass
                    self.more._fetch_instances()


                def _write__seq(self, io=None):
                    super()._write__seq(io)
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
                    if self.more._root != self._root:
                        raise kaitaistruct.ConsistencyError("more", self._root, self.more._root)
                    if self.more._parent != self:
                        raise kaitaistruct.ConsistencyError("more", self, self.more._parent)
                    self._dirty = False

                class SubsubObj(ReadWriteKaitaiStruct):
                    def __init__(self, _io=None, _parent=None, _root=None, _is_le=None):
                        super().__init__(_io)
                        self._parent = _parent
                        self._root = _root
                        self._is_le = _is_le
                        self._should_write_some_inst = False
                        self.some_inst__enabled = True

                    def _read(self):
                        if not hasattr(self, '_is_le'):
                            raise kaitaistruct.UndecidedEndiannessError("/types/doc/types/main_obj/types/sub_obj/types/subsub_obj")
                        elif self._is_le == True:
                            self._read_le()
                        elif self._is_le == False:
                            self._read_be()
                        self._dirty = False

                    def _read_le(self):
                        self.some_int1 = self._io.read_u2le()
                        self.some_int2 = self._io.read_u2le()
                        self._dirty = False

                    def _read_be(self):
                        self.some_int1 = self._io.read_u2be()
                        self.some_int2 = self._io.read_u2be()
                        self._dirty = False


                    def _fetch_instances(self):
                        pass
                        _ = self.some_inst
                        if hasattr(self, '_m_some_inst'):
                            pass



                    def _write__seq(self, io=None):
                        super()._write__seq(io)
                        if not hasattr(self, '_is_le'):
                            raise kaitaistruct.UndecidedEndiannessError("/types/doc/types/main_obj/types/sub_obj/types/subsub_obj")
                        elif self._is_le == True:
                            self._write__seq_le()
                        elif self._is_le == False:
                            self._write__seq_be()


                    def _write__seq_le(self):
                        self._should_write_some_inst = self.some_inst__enabled
                        self._io.write_u2le(self.some_int1)
                        self._io.write_u2le(self.some_int2)


                    def _write__seq_be(self):
                        self._should_write_some_inst = self.some_inst__enabled
                        self._io.write_u2be(self.some_int1)
                        self._io.write_u2be(self.some_int2)


                    def _check(self):
                        if self.some_inst__enabled:
                            pass

                        self._dirty = False

                    @property
                    def some_inst(self):
                        if self._should_write_some_inst:
                            self._write_some_inst()
                        if hasattr(self, '_m_some_inst'):
                            return self._m_some_inst

                        if not self.some_inst__enabled:
                            return None

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
                        self._dirty = True
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






