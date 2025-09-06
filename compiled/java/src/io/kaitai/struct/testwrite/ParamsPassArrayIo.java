// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;
import java.util.List;

public class ParamsPassArrayIo extends KaitaiStruct.ReadWrite {
    public static ParamsPassArrayIo fromFile(String fileName) throws IOException {
        return new ParamsPassArrayIo(new ByteBufferKaitaiStream(fileName));
    }
    public ParamsPassArrayIo() {
        this(null, null, null);
    }

    public ParamsPassArrayIo(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ParamsPassArrayIo(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ParamsPassArrayIo(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ParamsPassArrayIo _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw_first = this._io.readBytes(1);
        KaitaiStream _io__raw_first = new ByteBufferKaitaiStream(this._raw_first);
        this.first = new Block(_io__raw_first, this, _root);
        this.first._read();
        this.one = new ParamType(this._io, this, _root, new ArrayList<KaitaiStream>(Arrays.asList(first()._io(), _root()._io())));
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
            final ParamsPassArrayIo _this = this;
            _io__raw_first.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_first = _io__raw_first.toByteArray();
                    if (_this._raw_first.length != 1)
                        throw new ConsistencyError("raw(first)", _this._raw_first.length, 1);
                    parent.writeBytes(_this._raw_first);
                }
            });
        }
        this.first._write_Seq(_io__raw_first);
        this.one.setArgStreams(new ArrayList<KaitaiStream>(Arrays.asList(first()._io(), _root()._io())));
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

        public Block(KaitaiStream _io, ParamsPassArrayIo _parent) {
            this(_io, _parent, null);
        }

        public Block(KaitaiStream _io, ParamsPassArrayIo _parent, ParamsPassArrayIo _root) {
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
        private int foo;
        private ParamsPassArrayIo _root;
        private ParamsPassArrayIo _parent;
        public int foo() { return foo; }
        public void setFoo(int _v) { _dirty = true; foo = _v; }
        public ParamsPassArrayIo _root() { return _root; }
        public void set_root(ParamsPassArrayIo _v) { _dirty = true; _root = _v; }
        public ParamsPassArrayIo _parent() { return _parent; }
        public void set_parent(ParamsPassArrayIo _v) { _dirty = true; _parent = _v; }
    }
    public static class ParamType extends KaitaiStruct.ReadWrite {
        public ParamType(List<KaitaiStream> argStreams) {
            this(null, null, null, argStreams);
        }

        public ParamType(KaitaiStream _io, List<KaitaiStream> argStreams) {
            this(_io, null, null, argStreams);
        }

        public ParamType(KaitaiStream _io, ParamsPassArrayIo _parent, List<KaitaiStream> argStreams) {
            this(_io, _parent, null, argStreams);
        }

        public ParamType(KaitaiStream _io, ParamsPassArrayIo _parent, ParamsPassArrayIo _root, List<KaitaiStream> argStreams) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.argStreams = argStreams;
        }
        public void _read() {
            this.buf = this._io.readBytes(argStreams().get(((int) 0)).size());
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            if (this.buf.length != argStreams().get(((int) 0)).size())
                throw new ConsistencyError("buf", this.buf.length, argStreams().get(((int) 0)).size());
            this._io.writeBytes(this.buf);
        }

        public void _check() {
            _dirty = false;
        }
        private byte[] buf;
        private List<KaitaiStream> argStreams;
        private ParamsPassArrayIo _root;
        private ParamsPassArrayIo _parent;
        public byte[] buf() { return buf; }
        public void setBuf(byte[] _v) { _dirty = true; buf = _v; }
        public List<KaitaiStream> argStreams() { return argStreams; }
        public void setArgStreams(List<KaitaiStream> _v) { argStreams = _v; }
        public ParamsPassArrayIo _root() { return _root; }
        public void set_root(ParamsPassArrayIo _v) { _dirty = true; _root = _v; }
        public ParamsPassArrayIo _parent() { return _parent; }
        public void set_parent(ParamsPassArrayIo _v) { _dirty = true; _parent = _v; }
    }
    private Block first;
    private ParamType one;
    private ParamsPassArrayIo _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_first;
    public Block first() { return first; }
    public void setFirst(Block _v) { _dirty = true; first = _v; }
    public ParamType one() { return one; }
    public void setOne(ParamType _v) { _dirty = true; one = _v; }
    public ParamsPassArrayIo _root() { return _root; }
    public void set_root(ParamsPassArrayIo _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public byte[] _raw_first() { return _raw_first; }
    public void set_raw_First(byte[] _v) { _dirty = true; _raw_first = _v; }
}
