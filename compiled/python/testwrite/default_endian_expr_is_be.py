# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class DefaultEndianExprIsBe(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.docs = []
        i = 0
        while not self._io.is_eof():
            _t_docs = DefaultEndianExprIsBe.Doc(self._io, self, self._root)
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
            self.main = DefaultEndianExprIsBe.Doc.MainObj(self._io, self, self._root)
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
                self._should_write_inst_int = False
                self.inst_int__enabled = True
                self._should_write_inst_sub = False
                self.inst_sub__enabled = True

            def _read(self):
                _on = self._parent.indicator
                if _on == b"\x4D\x4D":
                    pass
                    self._is_le = False
                else:
                    pass
                    self._is_le = True
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
                _ = self.inst_int
                if hasattr(self, '_m_inst_int'):
                    pass

                _ = self.inst_sub
                if hasattr(self, '_m_inst_sub'):
                    pass
                    self._m_inst_sub._fetch_instances()



            def _write__seq(self, io=None):
                super()._write__seq(io)
                if not hasattr(self, '_is_le'):
                    raise kaitaistruct.UndecidedEndiannessError("/types/doc/types/main_obj")
                elif self._is_le == True:
                    self._write__seq_le()
                elif self._is_le == False:
                    self._write__seq_be()


            def _write__seq_le(self):
                self._should_write_inst_int = self.inst_int__enabled
                self._should_write_inst_sub = self.inst_sub__enabled
                self._io.write_u4le(self.some_int)
                self._io.write_u2be(self.some_int_be)
                self._io.write_u2le(self.some_int_le)


            def _write__seq_be(self):
                self._should_write_inst_int = self.inst_int__enabled
                self._should_write_inst_sub = self.inst_sub__enabled
                self._io.write_u4be(self.some_int)
                self._io.write_u2be(self.some_int_be)
                self._io.write_u2le(self.some_int_le)


            def _check(self):
                if self.inst_int__enabled:
                    pass

                if self.inst_sub__enabled:
                    pass
                    if self._m_inst_sub._root != self._root:
                        raise kaitaistruct.ConsistencyError("inst_sub", self._root, self._m_inst_sub._root)
                    if self._m_inst_sub._parent != self:
                        raise kaitaistruct.ConsistencyError("inst_sub", self, self._m_inst_sub._parent)

                self._dirty = False

            class SubMainObj(ReadWriteKaitaiStruct):
                def __init__(self, _io=None, _parent=None, _root=None, _is_le=None):
                    super().__init__(_io)
                    self._parent = _parent
                    self._root = _root
                    self._is_le = _is_le

                def _read(self):
                    if not hasattr(self, '_is_le'):
                        raise kaitaistruct.UndecidedEndiannessError("/types/doc/types/main_obj/types/sub_main_obj")
                    elif self._is_le == True:
                        self._read_le()
                    elif self._is_le == False:
                        self._read_be()
                    self._dirty = False

                def _read_le(self):
                    self.foo = self._io.read_u4le()
                    self._dirty = False

                def _read_be(self):
                    self.foo = self._io.read_u4be()
                    self._dirty = False


                def _fetch_instances(self):
                    pass


                def _write__seq(self, io=None):
                    super()._write__seq(io)
                    if not hasattr(self, '_is_le'):
                        raise kaitaistruct.UndecidedEndiannessError("/types/doc/types/main_obj/types/sub_main_obj")
                    elif self._is_le == True:
                        self._write__seq_le()
                    elif self._is_le == False:
                        self._write__seq_be()


                def _write__seq_le(self):
                    self._io.write_u4le(self.foo)


                def _write__seq_be(self):
                    self._io.write_u4be(self.foo)


                def _check(self):
                    self._dirty = False


            @property
            def inst_int(self):
                if self._should_write_inst_int:
                    self._write_inst_int()
                if hasattr(self, '_m_inst_int'):
                    return self._m_inst_int

                if not self.inst_int__enabled:
                    return None

                _pos = self._io.pos()
                self._io.seek(2)
                if self._is_le:
                    self._m_inst_int = self._io.read_u4le()
                else:
                    self._m_inst_int = self._io.read_u4be()
                self._io.seek(_pos)
                return getattr(self, '_m_inst_int', None)

            @inst_int.setter
            def inst_int(self, v):
                self._dirty = True
                self._m_inst_int = v

            def _write_inst_int(self):
                self._should_write_inst_int = False
                _pos = self._io.pos()
                self._io.seek(2)
                if self._is_le:
                    self._io.write_u4le(self._m_inst_int)
                else:
                    self._io.write_u4be(self._m_inst_int)
                self._io.seek(_pos)

            @property
            def inst_sub(self):
                if self._should_write_inst_sub:
                    self._write_inst_sub()
                if hasattr(self, '_m_inst_sub'):
                    return self._m_inst_sub

                if not self.inst_sub__enabled:
                    return None

                _pos = self._io.pos()
                self._io.seek(2)
                if self._is_le:
                    self._m_inst_sub = DefaultEndianExprIsBe.Doc.MainObj.SubMainObj(self._io, self, self._root, self._is_le)
                    self._m_inst_sub._read()
                else:
                    self._m_inst_sub = DefaultEndianExprIsBe.Doc.MainObj.SubMainObj(self._io, self, self._root, self._is_le)
                    self._m_inst_sub._read()
                self._io.seek(_pos)
                return getattr(self, '_m_inst_sub', None)

            @inst_sub.setter
            def inst_sub(self, v):
                self._dirty = True
                self._m_inst_sub = v

            def _write_inst_sub(self):
                self._should_write_inst_sub = False
                _pos = self._io.pos()
                self._io.seek(2)
                if self._is_le:
                    self._m_inst_sub._write__seq(self._io)
                else:
                    self._m_inst_sub._write__seq(self._io)
                self._io.seek(_pos)




