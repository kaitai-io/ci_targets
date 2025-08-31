// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class ParamsPassUsertype extends KaitaiStruct.ReadWrite {
    public static ParamsPassUsertype fromFile(String fileName) throws IOException {
        return new ParamsPassUsertype(new ByteBufferKaitaiStream(fileName));
    }
    public ParamsPassUsertype() {
        this(null, null, null);
    }

    public ParamsPassUsertype(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ParamsPassUsertype(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ParamsPassUsertype(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ParamsPassUsertype _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.first = new Block(this._io, this, _root);
        this.first._read();
        this.one = new ParamType(this._io, this, _root, first());
        this.one._read();
    }

    public void _fetchInstances() {
        this.first._fetchInstances();
        this.one._fetchInstances();
    }

    public void _write_Seq() {
        this.first._write_Seq(this._io);
        this.one._write_Seq(this._io);
    }

    public void _check() {
        if (!Objects.equals(this.first._root(), _root()))
            throw new ConsistencyError("first", this.first._root(), _root());
        if (!Objects.equals(this.first._parent(), this))
            throw new ConsistencyError("first", this.first._parent(), this);
        if (!Objects.equals(this.one._root(), _root()))
            throw new ConsistencyError("one", this.one._root(), _root());
        if (!Objects.equals(this.one._parent(), this))
            throw new ConsistencyError("one", this.one._parent(), this);
        if (!Objects.equals(this.one.foo(), first()))
            throw new ConsistencyError("one", this.one.foo(), first());
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

        public Block(KaitaiStream _io, ParamsPassUsertype _parent) {
            this(_io, _parent, null);
        }

        public Block(KaitaiStream _io, ParamsPassUsertype _parent, ParamsPassUsertype _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.foo = this._io.readU1();
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeU1(this.foo);
        }

        public void _check() {
        }
        private int foo;
        private ParamsPassUsertype _root;
        private ParamsPassUsertype _parent;
        public int foo() { return foo; }
        public void setFoo(int _v) { foo = _v; }
        public ParamsPassUsertype _root() { return _root; }
        public void set_root(ParamsPassUsertype _v) { _root = _v; }
        public ParamsPassUsertype _parent() { return _parent; }
        public void set_parent(ParamsPassUsertype _v) { _parent = _v; }
    }
    public static class ParamType extends KaitaiStruct.ReadWrite {
        public ParamType(Block foo) {
            this(null, null, null, foo);
        }

        public ParamType(KaitaiStream _io, Block foo) {
            this(_io, null, null, foo);
        }

        public ParamType(KaitaiStream _io, ParamsPassUsertype _parent, Block foo) {
            this(_io, _parent, null, foo);
        }

        public ParamType(KaitaiStream _io, ParamsPassUsertype _parent, ParamsPassUsertype _root, Block foo) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.foo = foo;
        }
        public void _read() {
            this.buf = this._io.readBytes(foo().foo());
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeBytes(this.buf);
        }

        public void _check() {
            if (this.buf.length != foo().foo())
                throw new ConsistencyError("buf", this.buf.length, foo().foo());
        }
        private byte[] buf;
        private Block foo;
        private ParamsPassUsertype _root;
        private ParamsPassUsertype _parent;
        public byte[] buf() { return buf; }
        public void setBuf(byte[] _v) { buf = _v; }
        public Block foo() { return foo; }
        public void setFoo(Block _v) { foo = _v; }
        public ParamsPassUsertype _root() { return _root; }
        public void set_root(ParamsPassUsertype _v) { _root = _v; }
        public ParamsPassUsertype _parent() { return _parent; }
        public void set_parent(ParamsPassUsertype _v) { _parent = _v; }
    }
    private Block first;
    private ParamType one;
    private ParamsPassUsertype _root;
    private KaitaiStruct.ReadWrite _parent;
    public Block first() { return first; }
    public void setFirst(Block _v) { first = _v; }
    public ParamType one() { return one; }
    public void setOne(ParamType _v) { one = _v; }
    public ParamsPassUsertype _root() { return _root; }
    public void set_root(ParamsPassUsertype _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
