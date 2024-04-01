// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class RecursiveOne extends KaitaiStruct {
    public static RecursiveOne fromFile(String fileName) throws IOException {
        return new RecursiveOne(new ByteBufferKaitaiStream(fileName));
    }

    public RecursiveOne(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RecursiveOne(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public RecursiveOne(KaitaiStream _io, KaitaiStruct _parent, RecursiveOne _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.one = this._io.readU1();
        switch (one() & 3) {
        case 0: {
            this.next = new RecursiveOne(this._io, this, _root);
            break;
        }
        case 1: {
            this.next = new RecursiveOne(this._io, this, _root);
            break;
        }
        case 2: {
            this.next = new RecursiveOne(this._io, this, _root);
            break;
        }
        case 3: {
            this.next = new Fini(this._io, this, _root);
            break;
        }
        }
    }
    public static class Fini extends KaitaiStruct {
        public static Fini fromFile(String fileName) throws IOException {
            return new Fini(new ByteBufferKaitaiStream(fileName));
        }

        public Fini(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Fini(KaitaiStream _io, RecursiveOne _parent) {
            this(_io, _parent, null);
        }

        public Fini(KaitaiStream _io, RecursiveOne _parent, RecursiveOne _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.finisher = this._io.readU2le();
        }
        private int finisher;
        private RecursiveOne _root;
        private RecursiveOne _parent;
        public int finisher() { return finisher; }
        public RecursiveOne _root() { return _root; }
        public RecursiveOne _parent() { return _parent; }
    }
    private int one;
    private KaitaiStruct next;
    private RecursiveOne _root;
    private KaitaiStruct _parent;
    public int one() { return one; }
    public KaitaiStruct next() { return next; }
    public RecursiveOne _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
