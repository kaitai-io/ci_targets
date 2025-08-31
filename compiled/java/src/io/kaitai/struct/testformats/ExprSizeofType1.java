// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ExprSizeofType1 extends KaitaiStruct {
    public static ExprSizeofType1 fromFile(String fileName) throws IOException {
        return new ExprSizeofType1(new ByteBufferKaitaiStream(fileName));
    }

    public ExprSizeofType1(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprSizeofType1(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ExprSizeofType1(KaitaiStream _io, KaitaiStruct _parent, ExprSizeofType1 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
    }

    public void _fetchInstances() {
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

        public Block(KaitaiStream _io, KaitaiStruct _parent, ExprSizeofType1 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.a = this._io.readU1();
            this.b = this._io.readU4le();
            this.c = this._io.readBytes(2);
            this.d = new Subblock(this._io, this, _root);
        }

        public void _fetchInstances() {
            this.d._fetchInstances();
        }
        public static class Subblock extends KaitaiStruct {
            public static Subblock fromFile(String fileName) throws IOException {
                return new Subblock(new ByteBufferKaitaiStream(fileName));
            }

            public Subblock(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Subblock(KaitaiStream _io, ExprSizeofType1.Block _parent) {
                this(_io, _parent, null);
            }

            public Subblock(KaitaiStream _io, ExprSizeofType1.Block _parent, ExprSizeofType1 _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.a = this._io.readBytes(4);
            }

            public void _fetchInstances() {
            }
            private byte[] a;
            private ExprSizeofType1 _root;
            private ExprSizeofType1.Block _parent;
            public byte[] a() { return a; }
            public ExprSizeofType1 _root() { return _root; }
            public ExprSizeofType1.Block _parent() { return _parent; }
        }
        private int a;
        private long b;
        private byte[] c;
        private Subblock d;
        private ExprSizeofType1 _root;
        private KaitaiStruct _parent;
        public int a() { return a; }
        public long b() { return b; }
        public byte[] c() { return c; }
        public Subblock d() { return d; }
        public ExprSizeofType1 _root() { return _root; }
        public KaitaiStruct _parent() { return _parent; }
    }
    private Integer sizeofBlock;
    public Integer sizeofBlock() {
        if (this.sizeofBlock != null)
            return this.sizeofBlock;
        this.sizeofBlock = ((Number) (11)).intValue();
        return this.sizeofBlock;
    }
    private Integer sizeofSubblock;
    public Integer sizeofSubblock() {
        if (this.sizeofSubblock != null)
            return this.sizeofSubblock;
        this.sizeofSubblock = ((Number) (4)).intValue();
        return this.sizeofSubblock;
    }
    private ExprSizeofType1 _root;
    private KaitaiStruct _parent;
    public ExprSizeofType1 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
