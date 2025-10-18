// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class ParamsPassIo extends KaitaiStruct.ReadWrite {
    public static ParamsPassIo fromFile(String fileName) throws IOException {
        return new ParamsPassIo(new ByteBufferKaitaiStream(fileName));
    }
    public ParamsPassIo() {
        this(null, null, null);
    }

    public ParamsPassIo(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ParamsPassIo(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ParamsPassIo(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ParamsPassIo _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw_first = this._io.readBytes(1);
        KaitaiStream _io__raw_first = new ByteBufferKaitaiStream(this._raw_first);
        this.first = new Block(_io__raw_first, this, _root);
        this.first._read();
        this.one = new ParamType(this._io, this, _root, (first().foo() == 255 ? first()._io() : _root()._io()));
        this.one._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.first._fetchInstances();
        this.one._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        final KaitaiStream _io__raw_first = new ByteBufferKaitaiStream(1);
        this._io.addChildStream(_io__raw_first);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (1));
            final ParamsPassIo _this = this;
            _io__raw_first.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_first = _io__raw_first.toByteArray();
                    if (_this._raw_first.length != 1)
                        throw new ConsistencyError("raw(first)", 1, _this._raw_first.length);
                    parent.writeBytes(_this._raw_first);
                }
            });
        }
        this.first._write_Seq(_io__raw_first);
        this.one.setArgStream((first().foo() == 255 ? first()._io() : _root()._io()));
        this.one._write_Seq(this._io);
    }

    public void _check() {
        if (!Objects.equals(this.first._root(), _root()))
            throw new ConsistencyError("first", _root(), this.first._root());
        if (!Objects.equals(this.first._parent(), this))
            throw new ConsistencyError("first", this, this.first._parent());
        if (!Objects.equals(this.one._root(), _root()))
            throw new ConsistencyError("one", _root(), this.one._root());
        if (!Objects.equals(this.one._parent(), this))
            throw new ConsistencyError("one", this, this.one._parent());
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

        public Block(KaitaiStream _io, ParamsPassIo _parent) {
            this(_io, _parent, null);
        }

        public Block(KaitaiStream _io, ParamsPassIo _parent, ParamsPassIo _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.foo = this._io.readU1();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(this.foo);
        }

        public void _check() {
            _dirty = false;
        }
        public int foo() { return foo; }
        public void setFoo(int _v) { _dirty = true; foo = _v; }
        public ParamsPassIo _root() { return _root; }
        public void set_root(ParamsPassIo _v) { _dirty = true; _root = _v; }
        public ParamsPassIo _parent() { return _parent; }
        public void set_parent(ParamsPassIo _v) { _dirty = true; _parent = _v; }
        private int foo;
        private ParamsPassIo _root;
        private ParamsPassIo _parent;
    }
    public static class ParamType extends KaitaiStruct.ReadWrite {
        public ParamType(KaitaiStream argStream) {
            this(null, null, null, argStream);
        }

        public ParamType(KaitaiStream _io, KaitaiStream argStream) {
            this(_io, null, null, argStream);
        }

        public ParamType(KaitaiStream _io, ParamsPassIo _parent, KaitaiStream argStream) {
            this(_io, _parent, null, argStream);
        }

        public ParamType(KaitaiStream _io, ParamsPassIo _parent, ParamsPassIo _root, KaitaiStream argStream) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.argStream = argStream;
        }
        public void _read() {
            this.buf = this._io.readBytes(argStream().size());
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            if (this.buf.length != argStream().size())
                throw new ConsistencyError("buf", argStream().size(), this.buf.length);
            this._io.writeBytes(this.buf);
        }

        public void _check() {
            _dirty = false;
        }
        public byte[] buf() { return buf; }
        public void setBuf(byte[] _v) { _dirty = true; buf = _v; }
        public KaitaiStream argStream() { return argStream; }
        public void setArgStream(KaitaiStream _v) { argStream = _v; }
        public ParamsPassIo _root() { return _root; }
        public void set_root(ParamsPassIo _v) { _dirty = true; _root = _v; }
        public ParamsPassIo _parent() { return _parent; }
        public void set_parent(ParamsPassIo _v) { _dirty = true; _parent = _v; }
        private byte[] buf;
        private KaitaiStream argStream;
        private ParamsPassIo _root;
        private ParamsPassIo _parent;
    }
    public Block first() { return first; }
    public void setFirst(Block _v) { _dirty = true; first = _v; }
    public ParamType one() { return one; }
    public void setOne(ParamType _v) { _dirty = true; one = _v; }
    public ParamsPassIo _root() { return _root; }
    public void set_root(ParamsPassIo _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public byte[] _raw_first() { return _raw_first; }
    public void set_raw_First(byte[] _v) { _dirty = true; _raw_first = _v; }
    private Block first;
    private ParamType one;
    private ParamsPassIo _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_first;
}
