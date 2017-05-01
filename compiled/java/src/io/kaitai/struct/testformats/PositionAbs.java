// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.Charset;

public class PositionAbs extends KaitaiStruct {
    public static PositionAbs fromFile(String fileName) throws IOException {
        return new PositionAbs(new KaitaiStream(fileName));
    }

    public PositionAbs(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public PositionAbs(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public PositionAbs(KaitaiStream _io, KaitaiStruct _parent, PositionAbs _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
        this.indexOffset = this._io.readU4le();
    }
    public static class IndexObj extends KaitaiStruct {
        public static IndexObj fromFile(String fileName) throws IOException {
            return new IndexObj(new KaitaiStream(fileName));
        }

        public IndexObj(KaitaiStream _io) {
            super(_io);
            _read();
        }

        public IndexObj(KaitaiStream _io, PositionAbs _parent) {
            super(_io);
            this._parent = _parent;
            _read();
        }

        public IndexObj(KaitaiStream _io, PositionAbs _parent, PositionAbs _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.entry = new String(this._io.readBytesTerm(0, false, true, true), Charset.forName("UTF-8"));
        }
        private String entry;
        private PositionAbs _root;
        private PositionAbs _parent;
        public String entry() { return entry; }
        public PositionAbs _root() { return _root; }
        public PositionAbs _parent() { return _parent; }
    }
    private IndexObj index;
    public IndexObj index() {
        if (this.index != null)
            return this.index;
        long _pos = this._io.pos();
        this._io.seek(indexOffset());
        this.index = new IndexObj(this._io, this, _root);
        this._io.seek(_pos);
        return this.index;
    }
    private long indexOffset;
    private PositionAbs _root;
    private KaitaiStruct _parent;
    public long indexOffset() { return indexOffset; }
    public PositionAbs _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
