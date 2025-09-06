// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;

public class PositionAbs extends KaitaiStruct.ReadWrite {
    public static PositionAbs fromFile(String fileName) throws IOException {
        return new PositionAbs(new ByteBufferKaitaiStream(fileName));
    }
    public PositionAbs() {
        this(null, null, null);
    }

    public PositionAbs(KaitaiStream _io) {
        this(_io, null, null);
    }

    public PositionAbs(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public PositionAbs(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, PositionAbs _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.indexOffset = this._io.readU4le();
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
        this._io.writeU4le(this.indexOffset);
    }

    public void _check() {
        if (_enabledIndex) {
            if (!Objects.equals(this.index._root(), _root()))
                throw new ConsistencyError("index", this.index._root(), _root());
            if (!Objects.equals(this.index._parent(), this))
                throw new ConsistencyError("index", this.index._parent(), this);
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

        public IndexObj(KaitaiStream _io, PositionAbs _parent) {
            this(_io, _parent, null);
        }

        public IndexObj(KaitaiStream _io, PositionAbs _parent, PositionAbs _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.entry = new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.UTF_8);
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytes((this.entry).getBytes(Charset.forName("UTF-8")));
            this._io.writeU1(0);
        }

        public void _check() {
            if (KaitaiStream.byteArrayIndexOf((this.entry).getBytes(Charset.forName("UTF-8")), ((byte) 0)) != -1)
                throw new ConsistencyError("entry", KaitaiStream.byteArrayIndexOf((this.entry).getBytes(Charset.forName("UTF-8")), ((byte) 0)), -1);
            _dirty = false;
        }
        private String entry;
        private PositionAbs _root;
        private PositionAbs _parent;
        public String entry() { return entry; }
        public void setEntry(String _v) { _dirty = true; entry = _v; }
        public PositionAbs _root() { return _root; }
        public void set_root(PositionAbs _v) { _dirty = true; _root = _v; }
        public PositionAbs _parent() { return _parent; }
        public void set_parent(PositionAbs _v) { _dirty = true; _parent = _v; }
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
        this._io.seek(indexOffset());
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
        this._io.seek(indexOffset());
        this.index._write_Seq(this._io);
        this._io.seek(_pos);
    }
    private long indexOffset;
    private PositionAbs _root;
    private KaitaiStruct.ReadWrite _parent;
    public long indexOffset() { return indexOffset; }
    public void setIndexOffset(long _v) { _dirty = true; indexOffset = _v; }
    public PositionAbs _root() { return _root; }
    public void set_root(PositionAbs _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
