// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class InstanceInRepeatExpr extends KaitaiStruct {
    public static InstanceInRepeatExpr fromFile(String fileName) throws IOException {
        return new InstanceInRepeatExpr(new ByteBufferKaitaiStream(fileName));
    }

    public InstanceInRepeatExpr(KaitaiStream _io) {
        this(_io, null, null);
    }

    public InstanceInRepeatExpr(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public InstanceInRepeatExpr(KaitaiStream _io, KaitaiStruct _parent, InstanceInRepeatExpr _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.chunks = new ArrayList<Chunk>();
        for (int i = 0; i < numChunks(); i++) {
            this.chunks.add(new Chunk(this._io, this, _root));
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.chunks.size(); i++) {
            this.chunks.get(((Number) (i)).intValue())._fetchInstances();
        }
        numChunks();
        if (this.numChunks != null) {
        }
    }
    public static class Chunk extends KaitaiStruct {
        public static Chunk fromFile(String fileName) throws IOException {
            return new Chunk(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            this.offset = this._io.readU4le();
            this.len = this._io.readU4le();
        }

        public void _fetchInstances() {
        }
        public long offset() { return offset; }
        public long len() { return len; }
        public InstanceInRepeatExpr _root() { return _root; }
        public InstanceInRepeatExpr _parent() { return _parent; }
        private long offset;
        private long len;
        private InstanceInRepeatExpr _root;
        private InstanceInRepeatExpr _parent;
    }
    public Long numChunks() {
        if (this.numChunks != null)
            return this.numChunks;
        long _pos = this._io.pos();
        this._io.seek(_io().pos() + 16);
        this.numChunks = this._io.readU4le();
        this._io.seek(_pos);
        return this.numChunks;
    }
    public List<Chunk> chunks() { return chunks; }
    public InstanceInRepeatExpr _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private Long numChunks;
    private List<Chunk> chunks;
    private InstanceInRepeatExpr _root;
    private KaitaiStruct _parent;
}
