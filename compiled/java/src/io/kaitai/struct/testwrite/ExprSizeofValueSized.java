// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class ExprSizeofValueSized extends KaitaiStruct.ReadWrite {
    public static ExprSizeofValueSized fromFile(String fileName) throws IOException {
        return new ExprSizeofValueSized(new ByteBufferKaitaiStream(fileName));
    }
    public ExprSizeofValueSized() {
        this(null, null, null);
    }

    public ExprSizeofValueSized(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprSizeofValueSized(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ExprSizeofValueSized(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ExprSizeofValueSized _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw_block1 = this._io.readBytes(12);
        KaitaiStream _io__raw_block1 = new ByteBufferKaitaiStream(this._raw_block1);
        this.block1 = new Block(_io__raw_block1, this, _root);
        this.block1._read();
        this.more = this._io.readU2le();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.block1._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        final KaitaiStream _io__raw_block1 = new ByteBufferKaitaiStream(12);
        this._io.addChildStream(_io__raw_block1);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (12));
            final ExprSizeofValueSized _this = this;
            _io__raw_block1.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_block1 = _io__raw_block1.toByteArray();
                    if (_this._raw_block1.length != 12)
                        throw new ConsistencyError("raw(block1)", 12, _this._raw_block1.length);
                    parent.writeBytes(_this._raw_block1);
                }
            });
        }
        this.block1._write_Seq(_io__raw_block1);
        this._io.writeU2le(this.more);
    }

    public void _check() {
        if (!Objects.equals(this.block1._root(), _root()))
            throw new ConsistencyError("block1", _root(), this.block1._root());
        if (!Objects.equals(this.block1._parent(), this))
            throw new ConsistencyError("block1", this, this.block1._parent());
        _dirty = false;
    }
    public static class Block extends KaitaiStruct.ReadWrite {
        public static Block fromFile(String fileName) throws IOException {
            return new Block(new ByteBufferKaitaiStream(fileName));
        }
        public Block() {
            this(null, null, null);
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
        }
        public void _read() {
            this.a = this._io.readU1();
            this.b = this._io.readU4le();
            this.c = this._io.readBytes(2);
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(this.a);
            this._io.writeU4le(this.b);
            this._io.writeBytes(this.c);
        }

        public void _check() {
            if (this.c.length != 2)
                throw new ConsistencyError("c", 2, this.c.length);
            _dirty = false;
        }
        private int a;
        private long b;
        private byte[] c;
        private ExprSizeofValueSized _root;
        private ExprSizeofValueSized _parent;
        public int a() { return a; }
        public void setA(int _v) { _dirty = true; a = _v; }
        public long b() { return b; }
        public void setB(long _v) { _dirty = true; b = _v; }
        public byte[] c() { return c; }
        public void setC(byte[] _v) { _dirty = true; c = _v; }
        public ExprSizeofValueSized _root() { return _root; }
        public void set_root(ExprSizeofValueSized _v) { _dirty = true; _root = _v; }
        public ExprSizeofValueSized _parent() { return _parent; }
        public void set_parent(ExprSizeofValueSized _v) { _dirty = true; _parent = _v; }
    }
    private Integer selfSizeof;
    public Integer selfSizeof() {
        if (this.selfSizeof != null)
            return this.selfSizeof;
        this.selfSizeof = ((Number) (14)).intValue();
        return this.selfSizeof;
    }
    public void _invalidateSelfSizeof() { this.selfSizeof = null; }
    private Integer sizeofBlock;
    public Integer sizeofBlock() {
        if (this.sizeofBlock != null)
            return this.sizeofBlock;
        this.sizeofBlock = ((Number) (12)).intValue();
        return this.sizeofBlock;
    }
    public void _invalidateSizeofBlock() { this.sizeofBlock = null; }
    private Integer sizeofBlockA;
    public Integer sizeofBlockA() {
        if (this.sizeofBlockA != null)
            return this.sizeofBlockA;
        this.sizeofBlockA = ((Number) (1)).intValue();
        return this.sizeofBlockA;
    }
    public void _invalidateSizeofBlockA() { this.sizeofBlockA = null; }
    private Integer sizeofBlockB;
    public Integer sizeofBlockB() {
        if (this.sizeofBlockB != null)
            return this.sizeofBlockB;
        this.sizeofBlockB = ((Number) (4)).intValue();
        return this.sizeofBlockB;
    }
    public void _invalidateSizeofBlockB() { this.sizeofBlockB = null; }
    private Integer sizeofBlockC;
    public Integer sizeofBlockC() {
        if (this.sizeofBlockC != null)
            return this.sizeofBlockC;
        this.sizeofBlockC = ((Number) (2)).intValue();
        return this.sizeofBlockC;
    }
    public void _invalidateSizeofBlockC() { this.sizeofBlockC = null; }
    private Block block1;
    private int more;
    private ExprSizeofValueSized _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_block1;
    public Block block1() { return block1; }
    public void setBlock1(Block _v) { _dirty = true; block1 = _v; }
    public int more() { return more; }
    public void setMore(int _v) { _dirty = true; more = _v; }
    public ExprSizeofValueSized _root() { return _root; }
    public void set_root(ExprSizeofValueSized _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public byte[] _raw_block1() { return _raw_block1; }
    public void set_raw_Block1(byte[] _v) { _dirty = true; _raw_block1 = _v; }
}
