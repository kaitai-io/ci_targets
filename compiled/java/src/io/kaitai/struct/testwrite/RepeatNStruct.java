// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;
import java.util.List;

public class RepeatNStruct extends KaitaiStruct.ReadWrite {
    public static RepeatNStruct fromFile(String fileName) throws IOException {
        return new RepeatNStruct(new ByteBufferKaitaiStream(fileName));
    }
    public RepeatNStruct() {
        this(null, null, null);
    }

    public RepeatNStruct(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatNStruct(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public RepeatNStruct(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, RepeatNStruct _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.qty = this._io.readU4le();
        this.chunks = new ArrayList<Chunk>();
        for (int i = 0; i < qty(); i++) {
            Chunk _t_chunks = new Chunk(this._io, this, _root);
            try {
                _t_chunks._read();
            } finally {
                this.chunks.add(_t_chunks);
            }
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.chunks.size(); i++) {
            this.chunks.get(((Number) (i)).intValue())._fetchInstances();
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU4le(this.qty);
        for (int i = 0; i < this.chunks.size(); i++) {
            this.chunks.get(((Number) (i)).intValue())._write_Seq(this._io);
        }
    }

    public void _check() {
        if (this.chunks.size() != qty())
            throw new ConsistencyError("chunks", this.chunks.size(), qty());
        for (int i = 0; i < this.chunks.size(); i++) {
            if (!Objects.equals(this.chunks.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("chunks", this.chunks.get(((Number) (i)).intValue())._root(), _root());
            if (!Objects.equals(this.chunks.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("chunks", this.chunks.get(((Number) (i)).intValue())._parent(), this);
        }
        _dirty = false;
    }
    public static class Chunk extends KaitaiStruct.ReadWrite {
        public static Chunk fromFile(String fileName) throws IOException {
            return new Chunk(new ByteBufferKaitaiStream(fileName));
        }
        public Chunk() {
            this(null, null, null);
        }

        public Chunk(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Chunk(KaitaiStream _io, RepeatNStruct _parent) {
            this(_io, _parent, null);
        }

        public Chunk(KaitaiStream _io, RepeatNStruct _parent, RepeatNStruct _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.offset = this._io.readU4le();
            this.len = this._io.readU4le();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU4le(this.offset);
            this._io.writeU4le(this.len);
        }

        public void _check() {
            _dirty = false;
        }
        private long offset;
        private long len;
        private RepeatNStruct _root;
        private RepeatNStruct _parent;
        public long offset() { return offset; }
        public void setOffset(long _v) { _dirty = true; offset = _v; }
        public long len() { return len; }
        public void setLen(long _v) { _dirty = true; len = _v; }
        public RepeatNStruct _root() { return _root; }
        public void set_root(RepeatNStruct _v) { _dirty = true; _root = _v; }
        public RepeatNStruct _parent() { return _parent; }
        public void set_parent(RepeatNStruct _v) { _dirty = true; _parent = _v; }
    }
    private long qty;
    private List<Chunk> chunks;
    private RepeatNStruct _root;
    private KaitaiStruct.ReadWrite _parent;
    public long qty() { return qty; }
    public void setQty(long _v) { _dirty = true; qty = _v; }
    public List<Chunk> chunks() { return chunks; }
    public void setChunks(List<Chunk> _v) { _dirty = true; chunks = _v; }
    public RepeatNStruct _root() { return _root; }
    public void set_root(RepeatNStruct _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
