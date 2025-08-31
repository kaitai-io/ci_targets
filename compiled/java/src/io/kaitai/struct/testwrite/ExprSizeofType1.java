// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class ExprSizeofType1 extends KaitaiStruct.ReadWrite {
    public static ExprSizeofType1 fromFile(String fileName) throws IOException {
        return new ExprSizeofType1(new ByteBufferKaitaiStream(fileName));
    }
    public ExprSizeofType1() {
        this(null, null, null);
    }

    public ExprSizeofType1(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprSizeofType1(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ExprSizeofType1(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ExprSizeofType1 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
    }

    public void _check() {
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

        public Block(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ExprSizeofType1 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.a = this._io.readU1();
            this.b = this._io.readU4le();
            this.c = this._io.readBytes(2);
            this.d = new Subblock(this._io, this, _root);
            this.d._read();
        }

        public void _fetchInstances() {
            this.d._fetchInstances();
        }

        public void _write_Seq() {
            this._io.writeU1(this.a);
            this._io.writeU4le(this.b);
            this._io.writeBytes(this.c);
            this.d._write_Seq(this._io);
        }

        public void _check() {
            if (this.c.length != 2)
                throw new ConsistencyError("c", this.c.length, 2);
            if (!Objects.equals(this.d._root(), _root()))
                throw new ConsistencyError("d", this.d._root(), _root());
            if (!Objects.equals(this.d._parent(), this))
                throw new ConsistencyError("d", this.d._parent(), this);
        }
        public static class Subblock extends KaitaiStruct.ReadWrite {
            public static Subblock fromFile(String fileName) throws IOException {
                return new Subblock(new ByteBufferKaitaiStream(fileName));
            }
            public Subblock() {
                this(null, null, null);
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
            }
            public void _read() {
                this.a = this._io.readBytes(4);
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
                this._io.writeBytes(this.a);
            }

            public void _check() {
                if (this.a.length != 4)
                    throw new ConsistencyError("a", this.a.length, 4);
            }
            private byte[] a;
            private ExprSizeofType1 _root;
            private ExprSizeofType1.Block _parent;
            public byte[] a() { return a; }
            public void setA(byte[] _v) { a = _v; }
            public ExprSizeofType1 _root() { return _root; }
            public void set_root(ExprSizeofType1 _v) { _root = _v; }
            public ExprSizeofType1.Block _parent() { return _parent; }
            public void set_parent(ExprSizeofType1.Block _v) { _parent = _v; }
        }
        private int a;
        private long b;
        private byte[] c;
        private Subblock d;
        private ExprSizeofType1 _root;
        private KaitaiStruct.ReadWrite _parent;
        public int a() { return a; }
        public void setA(int _v) { a = _v; }
        public long b() { return b; }
        public void setB(long _v) { b = _v; }
        public byte[] c() { return c; }
        public void setC(byte[] _v) { c = _v; }
        public Subblock d() { return d; }
        public void setD(Subblock _v) { d = _v; }
        public ExprSizeofType1 _root() { return _root; }
        public void set_root(ExprSizeofType1 _v) { _root = _v; }
        public KaitaiStruct.ReadWrite _parent() { return _parent; }
        public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
    }
    private Integer sizeofBlock;
    public Integer sizeofBlock() {
        if (this.sizeofBlock != null)
            return this.sizeofBlock;
        this.sizeofBlock = ((Number) (11)).intValue();
        return this.sizeofBlock;
    }
    public void _invalidateSizeofBlock() { this.sizeofBlock = null; }
    private Integer sizeofSubblock;
    public Integer sizeofSubblock() {
        if (this.sizeofSubblock != null)
            return this.sizeofSubblock;
        this.sizeofSubblock = ((Number) (4)).intValue();
        return this.sizeofSubblock;
    }
    public void _invalidateSizeofSubblock() { this.sizeofSubblock = null; }
    private ExprSizeofType1 _root;
    private KaitaiStruct.ReadWrite _parent;
    public ExprSizeofType1 _root() { return _root; }
    public void set_root(ExprSizeofType1 _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
