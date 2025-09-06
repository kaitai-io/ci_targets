// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class PositionInSeq extends KaitaiStruct {
    public static PositionInSeq fromFile(String fileName) throws IOException {
        return new PositionInSeq(new ByteBufferKaitaiStream(fileName));
    }

    public PositionInSeq(KaitaiStream _io) {
        this(_io, null, null);
    }

    public PositionInSeq(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public PositionInSeq(KaitaiStream _io, KaitaiStruct _parent, PositionInSeq _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.numbers = new ArrayList<Integer>();
        for (int i = 0; i < header().qtyNumbers(); i++) {
            this.numbers.add(this._io.readU1());
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.numbers.size(); i++) {
        }
        header();
        if (this.header != null) {
            this.header._fetchInstances();
        }
    }
    public static class HeaderObj extends KaitaiStruct {
        public static HeaderObj fromFile(String fileName) throws IOException {
            return new HeaderObj(new ByteBufferKaitaiStream(fileName));
        }

        public HeaderObj(KaitaiStream _io) {
            this(_io, null, null);
        }

        public HeaderObj(KaitaiStream _io, PositionInSeq _parent) {
            this(_io, _parent, null);
        }

        public HeaderObj(KaitaiStream _io, PositionInSeq _parent, PositionInSeq _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.qtyNumbers = this._io.readU4le();
        }

        public void _fetchInstances() {
        }
        private long qtyNumbers;
        private PositionInSeq _root;
        private PositionInSeq _parent;
        public long qtyNumbers() { return qtyNumbers; }
        public PositionInSeq _root() { return _root; }
        public PositionInSeq _parent() { return _parent; }
    }
    private HeaderObj header;
    public HeaderObj header() {
        if (this.header != null)
            return this.header;
        long _pos = this._io.pos();
        this._io.seek(16);
        this.header = new HeaderObj(this._io, this, _root);
        this._io.seek(_pos);
        return this.header;
    }
    private List<Integer> numbers;
    private PositionInSeq _root;
    private KaitaiStruct _parent;
    public List<Integer> numbers() { return numbers; }
    public PositionInSeq _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
