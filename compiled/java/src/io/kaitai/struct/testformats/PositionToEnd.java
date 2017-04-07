// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;

import java.io.IOException;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.nio.charset.Charset;

public class PositionToEnd extends KaitaiStruct {
    public static PositionToEnd fromFile(String fileName) throws IOException {
        return new PositionToEnd(new KaitaiStream(fileName));
    }

    public PositionToEnd(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public PositionToEnd(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public PositionToEnd(KaitaiStream _io, KaitaiStruct _parent, PositionToEnd _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
    }
    public static class IndexObj extends KaitaiStruct {
        public static IndexObj fromFile(String fileName) throws IOException {
            return new IndexObj(new KaitaiStream(fileName));
        }

        public IndexObj(KaitaiStream _io) {
            super(_io);
            _read();
        }

        public IndexObj(KaitaiStream _io, PositionToEnd _parent) {
            super(_io);
            this._parent = _parent;
            _read();
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
        this._io.seek((_io().size() - 8));
        this.index = new IndexObj(this._io, this, _root);
        this._io.seek(_pos);
        return this.index;
    }
    private PositionToEnd _root;
    private KaitaiStruct _parent;
    public PositionToEnd _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
