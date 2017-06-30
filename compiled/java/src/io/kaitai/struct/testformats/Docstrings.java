// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;


/**
 * One-liner description of a type.
 */
public class Docstrings extends KaitaiStruct {
    public static Docstrings fromFile(String fileName) throws IOException {
        return new Docstrings(new KaitaiStream(fileName));
    }

    public Docstrings(KaitaiStream _io) {
        this(_io, null, null);
    }

    public Docstrings(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public Docstrings(KaitaiStream _io, KaitaiStruct _parent, Docstrings _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.one = this._io.readU1();
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
    public static class ComplexSubtype extends KaitaiStruct {
        public static ComplexSubtype fromFile(String fileName) throws IOException {
            return new ComplexSubtype(new KaitaiStream(fileName));
        }

        public ComplexSubtype(KaitaiStream _io) {
            this(_io, null, null);
        }

        public ComplexSubtype(KaitaiStream _io, KaitaiStruct _parent) {
            this(_io, _parent, null);
        }

        public ComplexSubtype(KaitaiStream _io, KaitaiStruct _parent, Docstrings _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
        }
        private Docstrings _root;
        private KaitaiStruct _parent;
        public Docstrings _root() { return _root; }
        public KaitaiStruct _parent() { return _parent; }
    }
    private Integer two;

    /**
     * Another description for parse instance "two"
     */
    public Integer two() {
        if (this.two != null)
            return this.two;
        long _pos = this._io.pos();
        this._io.seek(0);
        this.two = this._io.readU1();
        this._io.seek(_pos);
        return this.two;
    }
    private Byte three;

    /**
     * And yet another one for value instance "three"
     */
    public Byte three() {
        if (this.three != null)
            return this.three;
        byte _tmp = (byte) (66);
        this.three = _tmp;
        return this.three;
    }
    private int one;
    private Docstrings _root;
    private KaitaiStruct _parent;

    /**
     * A pretty verbose description for sequence attribute "one"
     */
    public int one() { return one; }
    public Docstrings _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
