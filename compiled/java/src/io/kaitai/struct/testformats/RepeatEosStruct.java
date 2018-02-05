// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;

public class RepeatEosStruct extends KaitaiStruct {
    public static RepeatEosStruct fromFile(String fileName) throws IOException {
        return new RepeatEosStruct(new ByteBufferKaitaiStream(fileName));
    }

    public RepeatEosStruct(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatEosStruct(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public RepeatEosStruct(KaitaiStream _io, KaitaiStruct _parent, RepeatEosStruct _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.chunks = new ArrayList<Chunk>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.chunks.add(new Chunk(this._io, this, _root));
                i++;
            }
        }
    }
    public static class Chunk extends KaitaiStruct {
        public static Chunk fromFile(String fileName) throws IOException {
            return new Chunk(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            this.offset = this._io.readU4le();
            this.len = this._io.readU4le();
        }
        private long offset;
        private long len;
        private RepeatEosStruct _root;
        private RepeatEosStruct _parent;
        public long offset() { return offset; }
        public long len() { return len; }
        public RepeatEosStruct _root() { return _root; }
        public RepeatEosStruct _parent() { return _parent; }
    }
    private ArrayList<Chunk> chunks;
    private RepeatEosStruct _root;
    private KaitaiStruct _parent;
    public ArrayList<Chunk> chunks() { return chunks; }
    public RepeatEosStruct _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
