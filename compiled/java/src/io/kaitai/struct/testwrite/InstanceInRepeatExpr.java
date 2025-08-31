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

public class InstanceInRepeatExpr extends KaitaiStruct.ReadWrite {
    public static InstanceInRepeatExpr fromFile(String fileName) throws IOException {
        return new InstanceInRepeatExpr(new ByteBufferKaitaiStream(fileName));
    }
    public InstanceInRepeatExpr() {
        this(null, null, null);
    }

    public InstanceInRepeatExpr(KaitaiStream _io) {
        this(_io, null, null);
    }

    public InstanceInRepeatExpr(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public InstanceInRepeatExpr(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, InstanceInRepeatExpr _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.chunks = new ArrayList<Chunk>();
        for (int i = 0; i < numChunks(); i++) {
            Chunk _t_chunks = new Chunk(this._io, this, _root);
            try {
                _t_chunks._read();
            } finally {
                this.chunks.add(_t_chunks);
            }
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.chunks.size(); i++) {
            this.chunks.get(((Number) (i)).intValue())._fetchInstances();
        }
        numChunks();
    }

    public void _write_Seq() {
        _writeNumChunks = _toWriteNumChunks;
        if (this.chunks.size() != numChunks())
            throw new ConsistencyError("chunks", this.chunks.size(), numChunks());
        for (int i = 0; i < this.chunks.size(); i++) {
            this.chunks.get(((Number) (i)).intValue())._write_Seq(this._io);
        }
    }

    public void _check() {
        for (int i = 0; i < this.chunks.size(); i++) {
            if (!Objects.equals(this.chunks.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("chunks", this.chunks.get(((Number) (i)).intValue())._root(), _root());
            if (!Objects.equals(this.chunks.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("chunks", this.chunks.get(((Number) (i)).intValue())._parent(), this);
        }
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

        public Chunk(KaitaiStream _io, InstanceInRepeatExpr _parent) {
            this(_io, _parent, null);
        }

        public Chunk(KaitaiStream _io, InstanceInRepeatExpr _parent, InstanceInRepeatExpr _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.offset = this._io.readU4le();
            this.len = this._io.readU4le();
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeU4le(this.offset);
            this._io.writeU4le(this.len);
        }

        public void _check() {
        }
        private long offset;
        private long len;
        private InstanceInRepeatExpr _root;
        private InstanceInRepeatExpr _parent;
        public long offset() { return offset; }
        public void setOffset(long _v) { offset = _v; }
        public long len() { return len; }
        public void setLen(long _v) { len = _v; }
        public InstanceInRepeatExpr _root() { return _root; }
        public void set_root(InstanceInRepeatExpr _v) { _root = _v; }
        public InstanceInRepeatExpr _parent() { return _parent; }
        public void set_parent(InstanceInRepeatExpr _v) { _parent = _v; }
    }
    private Long numChunks;
    private boolean _writeNumChunks = false;
    private boolean _toWriteNumChunks = true;
    public Long numChunks() {
        if (_writeNumChunks)
            _writeNumChunks();
        if (this.numChunks != null)
            return this.numChunks;
        long _pos = this._io.pos();
        this._io.seek(_io().pos() + 16);
        this.numChunks = this._io.readU4le();
        this._io.seek(_pos);
        return this.numChunks;
    }
    public void setNumChunks(long _v) { numChunks = _v; }
    public void setNumChunks_ToWrite(boolean _v) { _toWriteNumChunks = _v; }

    public void _writeNumChunks() {
        _writeNumChunks = false;
        long _pos = this._io.pos();
        this._io.seek(_io().pos() + 16);
        this._io.writeU4le(this.numChunks);
        this._io.seek(_pos);
    }

    public void _checkNumChunks() {
    }
    private List<Chunk> chunks;
    private InstanceInRepeatExpr _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<Chunk> chunks() { return chunks; }
    public void setChunks(List<Chunk> _v) { chunks = _v; }
    public InstanceInRepeatExpr _root() { return _root; }
    public void set_root(InstanceInRepeatExpr _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
