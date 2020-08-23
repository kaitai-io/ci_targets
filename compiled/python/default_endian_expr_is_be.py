# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class DefaultEndianExprIsBe(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.docs = []
        i = 0
        while not self._io.is_eof():
            self.docs.append(DefaultEndianExprIsBe.Doc(self._io, self, self._root))
            i += 1


    class Doc(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.indicator = self._io.read_bytes(2)
            self.main = DefaultEndianExprIsBe.Doc.MainObj(self._io, self, self._root)

        class MainObj(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root if _root else self
                self._read()

            def _read(self):
                _on = self._parent.indicator
                if _on == b"\x4D\x4D":
                    self._is_le = False
                else:
                    self._is_le = True
                if not hasattr(self, '_is_le'):
                    raise kaitaistruct.UndecidedEndiannessError("/types/doc/types/main_obj")
                elif self._is_le == True:
                    self._read_le()
                elif self._is_le == False:
                    self._read_be()

            def _read_le(self):
                self.some_int = self._io.read_u4le()
                self.some_int_be = self._io.read_u2be()
                self.some_int_le = self._io.read_u2le()

            def _read_be(self):
                self.some_int = self._io.read_u4be()
                self.some_int_be = self._io.read_u2be()
                self.some_int_le = self._io.read_u2le()

            class SubMainObj(KaitaiStruct):
                def __init__(self, _io, _parent=None, _root=None, _is_le=None):
                    self._io = _io
                    self._parent = _parent
                    self._root = _root if _root else self
                    self._is_le = _is_le
                    self._read()

                def _read(self):
                    if not hasattr(self, '_is_le'):
                        raise kaitaistruct.UndecidedEndiannessError("/types/doc/types/main_obj/types/sub_main_obj")
                    elif self._is_le == True:
                        self._read_le()
                    elif self._is_le == False:
                        self._read_be()

                def _read_le(self):
                    self.foo = self._io.read_u4le()

                def _read_be(self):
                    self.foo = self._io.read_u4be()


            @property
            def inst_int(self):
                if hasattr(self, '_m_inst_int'):
                    return self._m_inst_int if hasattr(self, '_m_inst_int') else None

                _pos = self._io.pos()
                self._io.seek(2)
                if self._is_le:
                    self._m_inst_int = self._io.read_u4le()
                else:
                    self._m_inst_int = self._io.read_u4be()
                self._io.seek(_pos)
                return self._m_inst_int if hasattr(self, '_m_inst_int') else None

            @property
            def inst_sub(self):
                if hasattr(self, '_m_inst_sub'):
                    return self._m_inst_sub if hasattr(self, '_m_inst_sub') else None

                _pos = self._io.pos()
                self._io.seek(2)
                if self._is_le:
                    self._m_inst_sub = DefaultEndianExprIsBe.Doc.MainObj.SubMainObj(self._io, self, self._root, self._is_le)
                else:
                    self._m_inst_sub = DefaultEndianExprIsBe.Doc.MainObj.SubMainObj(self._io, self, self._root, self._is_le)
                self._io.seek(_pos)
                return self._m_inst_sub if hasattr(self, '_m_inst_sub') else None




