// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;

public class ExprSizeofType0 extends KaitaiStruct.ReadWrite {
    public static ExprSizeofType0 fromFile(String fileName) throws IOException {
        return new ExprSizeofType0(new ByteBufferKaitaiStream(fileName));
    }
    public ExprSizeofType0() {
        this(null, null, null);
    }

    public ExprSizeofType0(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprSizeofType0(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ExprSizeofType0(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ExprSizeofType0 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
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

        public Block(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
            this(_io, _parent, null);
        }

        public Block(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ExprSizeofType0 _root) {
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
                throw new ConsistencyError("c", this.c.length, 2);
            _dirty = false;
        }
        private int a;
        private long b;
        private byte[] c;
        private ExprSizeofType0 _root;
        private KaitaiStruct.ReadWrite _parent;
        public int a() { return a; }
        public void setA(int _v) { _dirty = true; a = _v; }
        public long b() { return b; }
        public void setB(long _v) { _dirty = true; b = _v; }
        public byte[] c() { return c; }
        public void setC(byte[] _v) { _dirty = true; c = _v; }
        public ExprSizeofType0 _root() { return _root; }
        public void set_root(ExprSizeofType0 _v) { _dirty = true; _root = _v; }
        public KaitaiStruct.ReadWrite _parent() { return _parent; }
        public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    }
    private Integer sizeofBlock;
    public Integer sizeofBlock() {
        if (this.sizeofBlock != null)
            return this.sizeofBlock;
        this.sizeofBlock = ((Number) (7)).intValue();
        return this.sizeofBlock;
    }
    public void _invalidateSizeofBlock() { this.sizeofBlock = null; }
    private ExprSizeofType0 _root;
    private KaitaiStruct.ReadWrite _parent;
    public ExprSizeofType0 _root() { return _root; }
    public void set_root(ExprSizeofType0 _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
