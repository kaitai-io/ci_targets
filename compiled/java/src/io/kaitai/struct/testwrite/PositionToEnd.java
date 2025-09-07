// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class PositionToEnd extends KaitaiStruct.ReadWrite {
    public static PositionToEnd fromFile(String fileName) throws IOException {
        return new PositionToEnd(new ByteBufferKaitaiStream(fileName));
    }
    public PositionToEnd() {
        this(null, null, null);
    }

    public PositionToEnd(KaitaiStream _io) {
        this(_io, null, null);
    }

    public PositionToEnd(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public PositionToEnd(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, PositionToEnd _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        _dirty = false;
    }

    public void _fetchInstances() {
        index();
        if (this.index != null) {
            this.index._fetchInstances();
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        _shouldWriteIndex = _enabledIndex;
    }

    public void _check() {
        if (_enabledIndex) {
            if (!Objects.equals(this.index._root(), _root()))
                throw new ConsistencyError("index", _root(), this.index._root());
            if (!Objects.equals(this.index._parent(), this))
                throw new ConsistencyError("index", this, this.index._parent());
        }
        _dirty = false;
    }
    public static class IndexObj extends KaitaiStruct.ReadWrite {
        public static IndexObj fromFile(String fileName) throws IOException {
            return new IndexObj(new ByteBufferKaitaiStream(fileName));
        }
        public IndexObj() {
            this(null, null, null);
        }

        public IndexObj(KaitaiStream _io) {
            this(_io, null, null);
        }

        public IndexObj(KaitaiStream _io, PositionToEnd _parent) {
            this(_io, _parent, null);
        }

        public IndexObj(KaitaiStream _io, PositionToEnd _parent, PositionToEnd _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.foo = this._io.readU4le();
            this.bar = this._io.readU4le();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU4le(this.foo);
            this._io.writeU4le(this.bar);
        }

        public void _check() {
            _dirty = false;
        }
        private long foo;
        private long bar;
        private PositionToEnd _root;
        private PositionToEnd _parent;
        public long foo() { return foo; }
        public void setFoo(long _v) { _dirty = true; foo = _v; }
        public long bar() { return bar; }
        public void setBar(long _v) { _dirty = true; bar = _v; }
        public PositionToEnd _root() { return _root; }
        public void set_root(PositionToEnd _v) { _dirty = true; _root = _v; }
        public PositionToEnd _parent() { return _parent; }
        public void set_parent(PositionToEnd _v) { _dirty = true; _parent = _v; }
    }
    private IndexObj index;
    private boolean _shouldWriteIndex = false;
    private boolean _enabledIndex = true;
    public IndexObj index() {
        if (_shouldWriteIndex)
            _writeIndex();
        if (this.index != null)
            return this.index;
        if (!_enabledIndex)
            return null;
        long _pos = this._io.pos();
        this._io.seek(_io().size() - 8);
        this.index = new IndexObj(this._io, this, _root);
        this.index._read();
        this._io.seek(_pos);
        return this.index;
    }
    public void setIndex(IndexObj _v) { _dirty = true; index = _v; }
    public void setIndex_Enabled(boolean _v) { _dirty = true; _enabledIndex = _v; }

    private void _writeIndex() {
        _shouldWriteIndex = false;
        long _pos = this._io.pos();
        this._io.seek(_io().size() - 8);
        this.index._write_Seq(this._io);
        this._io.seek(_pos);
    }
    private PositionToEnd _root;
    private KaitaiStruct.ReadWrite _parent;
    public PositionToEnd _root() { return _root; }
    public void set_root(PositionToEnd _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
