// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;

public class RepeatNStruct extends KaitaiStruct {
    public static RepeatNStruct fromFile(String fileName) throws IOException {
        return new RepeatNStruct(new KaitaiStream(fileName));
    }

    public RepeatNStruct(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _init();
    }

    public RepeatNStruct(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _init();
    }

    public RepeatNStruct(KaitaiStream _io, KaitaiStruct _parent, RepeatNStruct _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _init();
    }

    private void _init() {
        _read();
    }
    private void _read() {
        this.qty = this._io.readU4le();
        chunks = new ArrayList<Chunk>((int) (qty()));
        for (int i = 0; i < qty(); i++) {
            this.chunks.add(new Chunk(this._io, this, _root));
        }
    }
    public static class Chunk extends KaitaiStruct {
        public static Chunk fromFile(String fileName) throws IOException {
            return new Chunk(new KaitaiStream(fileName));
        }

        public Chunk(KaitaiStream _io) {
            super(_io);
            _init();
        }

        public Chunk(KaitaiStream _io, RepeatNStruct _parent) {
            super(_io);
            this._parent = _parent;
            _init();
        }

        public Chunk(KaitaiStream _io, RepeatNStruct _parent, RepeatNStruct _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _init();
        }

        private void _init() {
            _read();
        }
        private void _read() {
            this.offset = this._io.readU4le();
            this.len = this._io.readU4le();
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
    private ArrayList<Chunk> chunks;
    private RepeatNStruct _root;
    private KaitaiStruct _parent;
    public long qty() { return qty; }
    public ArrayList<Chunk> chunks() { return chunks; }
    public RepeatNStruct _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
