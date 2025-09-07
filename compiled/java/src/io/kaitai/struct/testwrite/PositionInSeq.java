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

public class PositionInSeq extends KaitaiStruct.ReadWrite {
    public static PositionInSeq fromFile(String fileName) throws IOException {
        return new PositionInSeq(new ByteBufferKaitaiStream(fileName));
    }
    public PositionInSeq() {
        this(null, null, null);
    }

    public PositionInSeq(KaitaiStream _io) {
        this(_io, null, null);
    }

    public PositionInSeq(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public PositionInSeq(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, PositionInSeq _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.numbers = new ArrayList<Integer>();
        for (int i = 0; i < header().qtyNumbers(); i++) {
            this.numbers.add(this._io.readU1());
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.numbers.size(); i++) {
        }
        header();
        if (this.header != null) {
            this.header._fetchInstances();
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        _shouldWriteHeader = _enabledHeader;
        if (this.numbers.size() != header().qtyNumbers())
            throw new ConsistencyError("numbers", header().qtyNumbers(), this.numbers.size());
        for (int i = 0; i < this.numbers.size(); i++) {
            this._io.writeU1(this.numbers.get(((Number) (i)).intValue()));
        }
    }

    public void _check() {
        for (int i = 0; i < this.numbers.size(); i++) {
        }
        if (_enabledHeader) {
            if (!Objects.equals(this.header._root(), _root()))
                throw new ConsistencyError("header", _root(), this.header._root());
            if (!Objects.equals(this.header._parent(), this))
                throw new ConsistencyError("header", this, this.header._parent());
        }
        _dirty = false;
    }
    public static class HeaderObj extends KaitaiStruct.ReadWrite {
        public static HeaderObj fromFile(String fileName) throws IOException {
            return new HeaderObj(new ByteBufferKaitaiStream(fileName));
        }
        public HeaderObj() {
            this(null, null, null);
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
        }
        public void _read() {
            this.qtyNumbers = this._io.readU4le();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU4le(this.qtyNumbers);
        }

        public void _check() {
            _dirty = false;
        }
        private long qtyNumbers;
        private PositionInSeq _root;
        private PositionInSeq _parent;
        public long qtyNumbers() { return qtyNumbers; }
        public void setQtyNumbers(long _v) { _dirty = true; qtyNumbers = _v; }
        public PositionInSeq _root() { return _root; }
        public void set_root(PositionInSeq _v) { _dirty = true; _root = _v; }
        public PositionInSeq _parent() { return _parent; }
        public void set_parent(PositionInSeq _v) { _dirty = true; _parent = _v; }
    }
    private HeaderObj header;
    private boolean _shouldWriteHeader = false;
    private boolean _enabledHeader = true;
    public HeaderObj header() {
        if (_shouldWriteHeader)
            _writeHeader();
        if (this.header != null)
            return this.header;
        if (!_enabledHeader)
            return null;
        long _pos = this._io.pos();
        this._io.seek(16);
        this.header = new HeaderObj(this._io, this, _root);
        this.header._read();
        this._io.seek(_pos);
        return this.header;
    }
    public void setHeader(HeaderObj _v) { _dirty = true; header = _v; }
    public void setHeader_Enabled(boolean _v) { _dirty = true; _enabledHeader = _v; }

    private void _writeHeader() {
        _shouldWriteHeader = false;
        long _pos = this._io.pos();
        this._io.seek(16);
        this.header._write_Seq(this._io);
        this._io.seek(_pos);
    }
    private List<Integer> numbers;
    private PositionInSeq _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<Integer> numbers() { return numbers; }
    public void setNumbers(List<Integer> _v) { _dirty = true; numbers = _v; }
    public PositionInSeq _root() { return _root; }
    public void set_root(PositionInSeq _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
