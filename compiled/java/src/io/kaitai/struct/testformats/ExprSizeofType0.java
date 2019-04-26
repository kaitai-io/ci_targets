// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ExprSizeofType0 extends KaitaiStruct {
    public static ExprSizeofType0 fromFile(String fileName) throws IOException {
        return new ExprSizeofType0(new ByteBufferKaitaiStream(fileName));
    }

    public ExprSizeofType0(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprSizeofType0(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ExprSizeofType0(KaitaiStream _io, KaitaiStruct _parent, ExprSizeofType0 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
    }
    public static class Block extends KaitaiStruct {
        public static Block fromFile(String fileName) throws IOException {
            return new Block(new ByteBufferKaitaiStream(fileName));
        }

        public Block(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Block(KaitaiStream _io, KaitaiStruct _parent) {
            this(_io, _parent, null);
        }

        public Block(KaitaiStream _io, KaitaiStruct _parent, ExprSizeofType0 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.a = this._io.readU1();
            this.b = this._io.readU4le();
            this.c = this._io.readBytes(2);
        }
        private int a;
        private long b;
        private byte[] c;
        private ExprSizeofType0 _root;
        private KaitaiStruct _parent;
        public int a() { return a; }
        public long b() { return b; }
        public byte[] c() { return c; }
        public ExprSizeofType0 _root() { return _root; }
        public KaitaiStruct _parent() { return _parent; }
    }
    private Integer sizeofBlock;
    public Integer sizeofBlock() {
        if (this.sizeofBlock != null)
            return this.sizeofBlock;
        int _tmp = (int) (7);
        this.sizeofBlock = _tmp;
        return this.sizeofBlock;
    }
    private ExprSizeofType0 _root;
    private KaitaiStruct _parent;
    public ExprSizeofType0 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
