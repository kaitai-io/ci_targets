// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

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
    }

    public void _fetchInstances() {
        index();
        this.index._fetchInstances();
    }

    public void _write_Seq() {
        _writeIndex = _toWriteIndex;
        this._io.writeU4le(this.indexOffset);
    }

    public void _check() {
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
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeBytes((this.entry).getBytes(Charset.forName("UTF-8")));
            this._io.writeU1(0);
        }

        public void _check() {
            if (KaitaiStream.byteArrayIndexOf((this.entry).getBytes(Charset.forName("UTF-8")), ((byte) 0)) != -1)
                throw new ConsistencyError("entry", KaitaiStream.byteArrayIndexOf((this.entry).getBytes(Charset.forName("UTF-8")), ((byte) 0)), -1);
        }
        private String entry;
        private PositionAbs _root;
        private PositionAbs _parent;
        public String entry() { return entry; }
        public void setEntry(String _v) { entry = _v; }
        public PositionAbs _root() { return _root; }
        public void set_root(PositionAbs _v) { _root = _v; }
        public PositionAbs _parent() { return _parent; }
        public void set_parent(PositionAbs _v) { _parent = _v; }
    }
    private IndexObj index;
    private boolean _writeIndex = false;
    private boolean _toWriteIndex = true;
    public IndexObj index() {
        if (_writeIndex)
            _writeIndex();
        if (this.index != null)
            return this.index;
        long _pos = this._io.pos();
        this._io.seek(indexOffset());
        this.index = new IndexObj(this._io, this, _root);
        this.index._read();
        this._io.seek(_pos);
        return this.index;
    }
    public void setIndex(IndexObj _v) { index = _v; }
    public void setIndex_ToWrite(boolean _v) { _toWriteIndex = _v; }

    public void _writeIndex() {
        _writeIndex = false;
        long _pos = this._io.pos();
        this._io.seek(indexOffset());
        this.index._write_Seq(this._io);
        this._io.seek(_pos);
    }

    public void _checkIndex() {
        if (!Objects.equals(this.index._root(), _root()))
            throw new ConsistencyError("index", this.index._root(), _root());
        if (!Objects.equals(this.index._parent(), this))
            throw new ConsistencyError("index", this.index._parent(), this);
    }
    private long indexOffset;
    private PositionAbs _root;
    private KaitaiStruct.ReadWrite _parent;
    public long indexOffset() { return indexOffset; }
    public void setIndexOffset(long _v) { indexOffset = _v; }
    public PositionAbs _root() { return _root; }
    public void set_root(PositionAbs _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
