// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ExprSizeofValue0 extends KaitaiStruct {
    public static ExprSizeofValue0 fromFile(String fileName) throws IOException {
        return new ExprSizeofValue0(new ByteBufferKaitaiStream(fileName));
    }

    public ExprSizeofValue0(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprSizeofValue0(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ExprSizeofValue0(KaitaiStream _io, KaitaiStruct _parent, ExprSizeofValue0 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.block1 = new Block(this._io, this, _root);
        this.more = this._io.readU2le();
    }

    public void _fetchInstances() {
        this.block1._fetchInstances();
    }
    public static class Block extends KaitaiStruct {
        public static Block fromFile(String fileName) throws IOException {
            return new Block(new ByteBufferKaitaiStream(fileName));
        }

        public Block(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Block(KaitaiStream _io, ExprSizeofValue0 _parent) {
            this(_io, _parent, null);
        }

        public Block(KaitaiStream _io, ExprSizeofValue0 _parent, ExprSizeofValue0 _root) {
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

        public void _fetchInstances() {
        }
        public int a() { return a; }
        public long b() { return b; }
        public byte[] c() { return c; }
        public ExprSizeofValue0 _root() { return _root; }
        public ExprSizeofValue0 _parent() { return _parent; }
        private int a;
        private long b;
        private byte[] c;
        private ExprSizeofValue0 _root;
        private ExprSizeofValue0 _parent;
    }
    public Integer selfSizeof() {
        if (this.selfSizeof != null)
            return this.selfSizeof;
        this.selfSizeof = ((Number) (9)).intValue();
        return this.selfSizeof;
    }
    public Integer sizeofBlock() {
        if (this.sizeofBlock != null)
            return this.sizeofBlock;
        this.sizeofBlock = ((Number) (7)).intValue();
        return this.sizeofBlock;
    }
    public Integer sizeofBlockA() {
        if (this.sizeofBlockA != null)
            return this.sizeofBlockA;
        this.sizeofBlockA = ((Number) (1)).intValue();
        return this.sizeofBlockA;
    }
    public Integer sizeofBlockB() {
        if (this.sizeofBlockB != null)
            return this.sizeofBlockB;
        this.sizeofBlockB = ((Number) (4)).intValue();
        return this.sizeofBlockB;
    }
    public Integer sizeofBlockC() {
        if (this.sizeofBlockC != null)
            return this.sizeofBlockC;
        this.sizeofBlockC = ((Number) (2)).intValue();
        return this.sizeofBlockC;
    }
    public Block block1() { return block1; }
    public int more() { return more; }
    public ExprSizeofValue0 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private Integer selfSizeof;
    private Integer sizeofBlock;
    private Integer sizeofBlockA;
    private Integer sizeofBlockB;
    private Integer sizeofBlockC;
    private Block block1;
    private int more;
    private ExprSizeofValue0 _root;
    private KaitaiStruct _parent;
}
