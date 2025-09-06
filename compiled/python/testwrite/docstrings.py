# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class Docstrings(ReadWriteKaitaiStruct):
    """One-liner description of a type."""
    def __init__(self, _io=None, _parent=None, _root=None):
        super(Docstrings, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._should_write_two = False
        self.two__enabled = True

    def _read(self):
        self.one = self._io.read_u1()
        self._dirty = False


    def _fetch_instances(self):
        pass
        _ = self.two
        if hasattr(self, '_m_two'):
            pass



    def _write__seq(self, io=None):
        super(Docstrings, self)._write__seq(io)
        self._should_write_two = self.two__enabled
        self._io.write_u1(self.one)


    def _check(self):
        if self.two__enabled:
            pass

        self._dirty = False

    class ComplexSubtype(ReadWriteKaitaiStruct):
        """This subtype is never used, yet has a very long description
        that spans multiple lines. It should be formatted accordingly,
        even in languages that have single-line comments for
        docstrings. Actually, there's even a MarkDown-style list here
        with several bullets:
        
        * one
        * two
        * three
        
        And the text continues after that. Here's a MarkDown-style link:
        [woohoo](http://example.com) - one day it will be supported as
        well.
        """
        def __init__(self, _io=None, _parent=None, _root=None):
            super(Docstrings.ComplexSubtype, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            pass
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(Docstrings.ComplexSubtype, self)._write__seq(io)


        def _check(self):
            self._dirty = False


    @property
    def three(self):
        """And yet another one for value instance "three"."""
        if hasattr(self, '_m_three'):
            return self._m_three

        self._m_three = 66
        return getattr(self, '_m_three', None)

    def _invalidate_three(self):
        del self._m_three
    @property
    def two(self):
        """Another description for parse instance "two"."""
        if self._should_write_two:
            self._write_two()
        if hasattr(self, '_m_two'):
            return self._m_two

        if not self.two__enabled:
            return None

        _pos = self._io.pos()
        self._io.seek(0)
        self._m_two = self._io.read_u1()
        self._io.seek(_pos)
        return getattr(self, '_m_two', None)

    @two.setter
    def two(self, v):
        self._dirty = True
        self._m_two = v

    def _write_two(self):
        self._should_write_two = False
        _pos = self._io.pos()
        self._io.seek(0)
        self._io.write_u1(self._m_two)
        self._io.seek(_pos)


