// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ExprSizeofValueSized extends KaitaiStruct {
    public static ExprSizeofValueSized fromFile(String fileName) throws IOException {
        return new ExprSizeofValueSized(new ByteBufferKaitaiStream(fileName));
    }

    public ExprSizeofValueSized(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprSizeofValueSized(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ExprSizeofValueSized(KaitaiStream _io, KaitaiStruct _parent, ExprSizeofValueSized _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        KaitaiStream _io_block1 = this._io.substream(12);
        this.block1 = new Block(_io_block1, this, _root);
        this.more = this._io.readU2le();
    }
    public static class Block extends KaitaiStruct {
        public static Block fromFile(String fileName) throws IOException {
            return new Block(new ByteBufferKaitaiStream(fileName));
        }

        public Block(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Block(KaitaiStream _io, ExprSizeofValueSized _parent) {
            this(_io, _parent, null);
        }

        public Block(KaitaiStream _io, ExprSizeofValueSized _parent, ExprSizeofValueSized _root) {
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
        private ExprSizeofValueSized _root;
        private ExprSizeofValueSized _parent;
        public int a() { return a; }
        public long b() { return b; }
        public byte[] c() { return c; }
        public ExprSizeofValueSized _root() { return _root; }
        public ExprSizeofValueSized _parent() { return _parent; }
    }
    private Integer selfSizeof;
    public Integer selfSizeof() {
        if (this.selfSizeof != null)
            return this.selfSizeof;
        int _tmp = (int) (14);
        this.selfSizeof = _tmp;
        return this.selfSizeof;
    }
    private Integer sizeofBlock;
    public Integer sizeofBlock() {
        if (this.sizeofBlock != null)
            return this.sizeofBlock;
        int _tmp = (int) (12);
        this.sizeofBlock = _tmp;
        return this.sizeofBlock;
    }
    private Integer sizeofBlockA;
    public Integer sizeofBlockA() {
        if (this.sizeofBlockA != null)
            return this.sizeofBlockA;
        int _tmp = (int) (1);
        this.sizeofBlockA = _tmp;
        return this.sizeofBlockA;
    }
    private Integer sizeofBlockB;
    public Integer sizeofBlockB() {
        if (this.sizeofBlockB != null)
            return this.sizeofBlockB;
        int _tmp = (int) (4);
        this.sizeofBlockB = _tmp;
        return this.sizeofBlockB;
    }
    private Integer sizeofBlockC;
    public Integer sizeofBlockC() {
        if (this.sizeofBlockC != null)
            return this.sizeofBlockC;
        int _tmp = (int) (2);
        this.sizeofBlockC = _tmp;
        return this.sizeofBlockC;
    }
    private Block block1;
    private int more;
    private ExprSizeofValueSized _root;
    private KaitaiStruct _parent;
    public Block block1() { return block1; }
    public int more() { return more; }
    public ExprSizeofValueSized _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
