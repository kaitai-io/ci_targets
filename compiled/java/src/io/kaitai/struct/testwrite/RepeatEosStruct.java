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

public class RepeatEosStruct extends KaitaiStruct.ReadWrite {
    public static RepeatEosStruct fromFile(String fileName) throws IOException {
        return new RepeatEosStruct(new ByteBufferKaitaiStream(fileName));
    }
    public RepeatEosStruct() {
        this(null, null, null);
    }

    public RepeatEosStruct(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatEosStruct(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public RepeatEosStruct(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, RepeatEosStruct _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.chunks = new ArrayList<Chunk>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                Chunk _t_chunks = new Chunk(this._io, this, _root);
                try {
                    _t_chunks._read();
                } finally {
                    this.chunks.add(_t_chunks);
                }
                i++;
            }
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.chunks.size(); i++) {
            this.chunks.get(((Number) (i)).intValue())._fetchInstances();
        }
    }

    public void _write_Seq() {
        for (int i = 0; i < this.chunks.size(); i++) {
            if (this._io.isEof())
                throw new ConsistencyError("chunks", this._io.size() - this._io.pos(), 0);
            this.chunks.get(((Number) (i)).intValue())._write_Seq(this._io);
        }
        if (!(this._io.isEof()))
            throw new ConsistencyError("chunks", this._io.size() - this._io.pos(), 0);
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

        public Chunk(KaitaiStream _io, RepeatEosStruct _parent) {
            this(_io, _parent, null);
        }

        public Chunk(KaitaiStream _io, RepeatEosStruct _parent, RepeatEosStruct _root) {
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
        private RepeatEosStruct _root;
        private RepeatEosStruct _parent;
        public long offset() { return offset; }
        public void setOffset(long _v) { offset = _v; }
        public long len() { return len; }
        public void setLen(long _v) { len = _v; }
        public RepeatEosStruct _root() { return _root; }
        public void set_root(RepeatEosStruct _v) { _root = _v; }
        public RepeatEosStruct _parent() { return _parent; }
        public void set_parent(RepeatEosStruct _v) { _parent = _v; }
    }
    private List<Chunk> chunks;
    private RepeatEosStruct _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<Chunk> chunks() { return chunks; }
    public void setChunks(List<Chunk> _v) { chunks = _v; }
    public RepeatEosStruct _root() { return _root; }
    public void set_root(RepeatEosStruct _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
