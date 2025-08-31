// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class RepeatNStruct extends KaitaiStruct {
    public static RepeatNStruct fromFile(String fileName) throws IOException {
        return new RepeatNStruct(new ByteBufferKaitaiStream(fileName));
    }

    public RepeatNStruct(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatNStruct(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public RepeatNStruct(KaitaiStream _io, KaitaiStruct _parent, RepeatNStruct _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.qty = this._io.readU4le();
        this.chunks = new ArrayList<Chunk>();
        for (int i = 0; i < qty(); i++) {
            this.chunks.add(new Chunk(this._io, this, _root));
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.chunks.size(); i++) {
            this.chunks.get(((Number) (i)).intValue())._fetchInstances();
        }
    }
    public static class Chunk extends KaitaiStruct {
        public static Chunk fromFile(String fileName) throws IOException {
            return new Chunk(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            this.offset = this._io.readU4le();
            this.len = this._io.readU4le();
        }

        public void _fetchInstances() {
        }
        private long offset;
        private long len;
        private RepeatNStruct _root;
        private RepeatNStruct _parent;
        public long offset() { return offset; }
        public long len() { return len; }
        public RepeatNStruct _root() { return _root; }
        public RepeatNStruct _parent() { return _parent; }
    }
    private long qty;
    private List<Chunk> chunks;
    private RepeatNStruct _root;
    private KaitaiStruct _parent;
    public long qty() { return qty; }
    public List<Chunk> chunks() { return chunks; }
    public RepeatNStruct _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
