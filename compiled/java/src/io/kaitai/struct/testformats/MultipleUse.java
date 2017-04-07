// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;

import java.io.IOException;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.nio.charset.Charset;

public class MultipleUse extends KaitaiStruct {
    public static MultipleUse fromFile(String fileName) throws IOException {
        return new MultipleUse(new KaitaiStream(fileName));
    }

    public MultipleUse(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public MultipleUse(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public MultipleUse(KaitaiStream _io, KaitaiStruct _parent, MultipleUse _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
        this.t1 = new Type1(this._io, this, _root);
        this.t2 = new Type2(this._io, this, _root);
    }
    public static class Multi extends KaitaiStruct {
        public static Multi fromFile(String fileName) throws IOException {
            return new Multi(new KaitaiStream(fileName));
        }

        public Multi(KaitaiStream _io) {
            super(_io);
            _read();
        }

        public Multi(KaitaiStream _io, KaitaiStruct _parent) {
            super(_io);
            this._parent = _parent;
            _read();
        }

        public Multi(KaitaiStream _io, KaitaiStruct _parent, MultipleUse _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.value = this._io.readS4le();
        }
        private int value;
        private MultipleUse _root;
        private KaitaiStruct _parent;
        public int value() { return value; }
        public MultipleUse _root() { return _root; }
        public KaitaiStruct _parent() { return _parent; }
    }
    public static class Type1 extends KaitaiStruct {
        public static Type1 fromFile(String fileName) throws IOException {
            return new Type1(new KaitaiStream(fileName));
        }

        public Type1(KaitaiStream _io) {
            super(_io);
            _read();
        }

        public Type1(KaitaiStream _io, MultipleUse _parent) {
            super(_io);
            this._parent = _parent;
            _read();
        }

        public Type1(KaitaiStream _io, MultipleUse _parent, MultipleUse _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.firstUse = new Multi(this._io, this, _root);
        }
        private Multi firstUse;
        private MultipleUse _root;
        private MultipleUse _parent;
        public Multi firstUse() { return firstUse; }
        public MultipleUse _root() { return _root; }
        public MultipleUse _parent() { return _parent; }
    }
    public static class Type2 extends KaitaiStruct {
        public static Type2 fromFile(String fileName) throws IOException {
            return new Type2(new KaitaiStream(fileName));
        }

        public Type2(KaitaiStream _io) {
            super(_io);
            _read();
        }

        public Type2(KaitaiStream _io, MultipleUse _parent) {
            super(_io);
            this._parent = _parent;
            _read();
        }

        public Type2(KaitaiStream _io, MultipleUse _parent, MultipleUse _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
        }
        private Multi secondUse;
        public Multi secondUse() {
            if (this.secondUse != null)
                return this.secondUse;
            long _pos = this._io.pos();
            this._io.seek(0);
            this.secondUse = new Multi(this._io, this, _root);
            this._io.seek(_pos);
            return this.secondUse;
        }
        private MultipleUse _root;
        private MultipleUse _parent;
        public MultipleUse _root() { return _root; }
        public MultipleUse _parent() { return _parent; }
    }
    private Type1 t1;
    private Type2 t2;
    private MultipleUse _root;
    private KaitaiStruct _parent;
    public Type1 t1() { return t1; }
    public Type2 t2() { return t2; }
    public MultipleUse _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
