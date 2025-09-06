// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;


/**
 * One-liner description of a type.
 */
public class Docstrings extends KaitaiStruct.ReadWrite {
    public static Docstrings fromFile(String fileName) throws IOException {
        return new Docstrings(new ByteBufferKaitaiStream(fileName));
    }
    public Docstrings() {
        this(null, null, null);
    }

    public Docstrings(KaitaiStream _io) {
        this(_io, null, null);
    }

    public Docstrings(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public Docstrings(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, Docstrings _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.one = this._io.readU1();
        _dirty = false;
    }

    public void _fetchInstances() {
        two();
        if (this.two != null) {
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        _shouldWriteTwo = _enabledTwo;
        this._io.writeU1(this.one);
    }

    public void _check() {
        if (_enabledTwo) {
        }
        _dirty = false;
    }

    /**
     * This subtype is never used, yet has a very long description
     * that spans multiple lines. It should be formatted accordingly,
     * even in languages that have single-line comments for
     * docstrings. Actually, there's even a MarkDown-style list here
     * with several bullets:
     * 
     * * one
     * * two
     * * three
     * 
     * And the text continues after that. Here's a MarkDown-style link:
     * [woohoo](http://example.com) - one day it will be supported as
     * well.
     */
    public static class ComplexSubtype extends KaitaiStruct.ReadWrite {
        public static ComplexSubtype fromFile(String fileName) throws IOException {
            return new ComplexSubtype(new ByteBufferKaitaiStream(fileName));
        }
        public ComplexSubtype() {
            this(null, null, null);
        }

        public ComplexSubtype(KaitaiStream _io) {
            this(_io, null, null);
        }

        public ComplexSubtype(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
            this(_io, _parent, null);
        }

        public ComplexSubtype(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, Docstrings _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
        }

        public void _check() {
            _dirty = false;
        }
        private Docstrings _root;
        private KaitaiStruct.ReadWrite _parent;
        public Docstrings _root() { return _root; }
        public void set_root(Docstrings _v) { _dirty = true; _root = _v; }
        public KaitaiStruct.ReadWrite _parent() { return _parent; }
        public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    }
    private Byte three;

    /**
     * And yet another one for value instance "three"
     */
    public Byte three() {
        if (this.three != null)
            return this.three;
        this.three = ((byte) 66);
        return this.three;
    }
    public void _invalidateThree() { this.three = null; }
    private Integer two;
    private boolean _shouldWriteTwo = false;
    private boolean _enabledTwo = true;

    /**
     * Another description for parse instance "two"
     */
    public Integer two() {
        if (_shouldWriteTwo)
            _writeTwo();
        if (this.two != null)
            return this.two;
        if (!_enabledTwo)
            return null;
        long _pos = this._io.pos();
        this._io.seek(0);
        this.two = this._io.readU1();
        this._io.seek(_pos);
        return this.two;
    }
    public void setTwo(int _v) { _dirty = true; two = _v; }
    public void setTwo_Enabled(boolean _v) { _dirty = true; _enabledTwo = _v; }

    private void _writeTwo() {
        _shouldWriteTwo = false;
        long _pos = this._io.pos();
        this._io.seek(0);
        this._io.writeU1(this.two);
        this._io.seek(_pos);
    }
    private int one;
    private Docstrings _root;
    private KaitaiStruct.ReadWrite _parent;

    /**
     * A pretty verbose description for sequence attribute "one"
     */
    public int one() { return one; }
    public void setOne(int _v) { _dirty = true; one = _v; }
    public Docstrings _root() { return _root; }
    public void set_root(Docstrings _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
