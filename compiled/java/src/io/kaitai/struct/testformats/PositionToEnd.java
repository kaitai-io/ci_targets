// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class PositionToEnd extends KaitaiStruct {
    public static PositionToEnd fromFile(String fileName) throws IOException {
        return new PositionToEnd(new ByteBufferKaitaiStream(fileName));
    }

    public PositionToEnd(KaitaiStream _io) {
        this(_io, null, null);
    }

    public PositionToEnd(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public PositionToEnd(KaitaiStream _io, KaitaiStruct _parent, PositionToEnd _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
    }

    public void _fetchInstances() {
        index();
        if (this.index != null) {
            this.index._fetchInstances();
        }
    }
    public static class IndexObj extends KaitaiStruct {
        public static IndexObj fromFile(String fileName) throws IOException {
            return new IndexObj(new ByteBufferKaitaiStream(fileName));
        }

        public IndexObj(KaitaiStream _io) {
            this(_io, null, null);
        }

        public IndexObj(KaitaiStream _io, PositionToEnd _parent) {
            this(_io, _parent, null);
        }

        public IndexObj(KaitaiStream _io, PositionToEnd _parent, PositionToEnd _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.foo = this._io.readU4le();
            this.bar = this._io.readU4le();
        }

        public void _fetchInstances() {
        }
        private long foo;
        private long bar;
        private PositionToEnd _root;
        private PositionToEnd _parent;
        public long foo() { return foo; }
        public long bar() { return bar; }
        public PositionToEnd _root() { return _root; }
        public PositionToEnd _parent() { return _parent; }
    }
    private IndexObj index;
    public IndexObj index() {
        if (this.index != null)
            return this.index;
        long _pos = this._io.pos();
        this._io.seek(_io().size() - 8);
        this.index = new IndexObj(this._io, this, _root);
        this._io.seek(_pos);
        return this.index;
    }
    private PositionToEnd _root;
    private KaitaiStruct _parent;
    public PositionToEnd _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
