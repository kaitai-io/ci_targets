// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class RepeatUntilCalcArrayType extends KaitaiStruct {
    public static RepeatUntilCalcArrayType fromFile(String fileName) throws IOException {
        return new RepeatUntilCalcArrayType(new ByteBufferKaitaiStream(fileName));
    }

    public RepeatUntilCalcArrayType(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatUntilCalcArrayType(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public RepeatUntilCalcArrayType(KaitaiStream _io, KaitaiStruct _parent, RepeatUntilCalcArrayType _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.records = new ArrayList<Record>();
        {
            Record _it;
            int i = 0;
            do {
                KaitaiStream _io_records = this._io.substream(5);
                _it = new Record(_io_records, this, _root);
                this.records.add(_it);
                i++;
            } while (!(_it.marker() == 170));
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.records.size(); i++) {
            this.records.get(((Number) (i)).intValue())._fetchInstances();
        }
    }
    public static class Record extends KaitaiStruct {
        public static Record fromFile(String fileName) throws IOException {
            return new Record(new ByteBufferKaitaiStream(fileName));
        }

        public Record(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Record(KaitaiStream _io, RepeatUntilCalcArrayType _parent) {
            this(_io, _parent, null);
        }

        public Record(KaitaiStream _io, RepeatUntilCalcArrayType _parent, RepeatUntilCalcArrayType _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.marker = this._io.readU1();
            this.body = this._io.readU4le();
        }

        public void _fetchInstances() {
        }
        public int marker() { return marker; }
        public long body() { return body; }
        public RepeatUntilCalcArrayType _root() { return _root; }
        public RepeatUntilCalcArrayType _parent() { return _parent; }
        private int marker;
        private long body;
        private RepeatUntilCalcArrayType _root;
        private RepeatUntilCalcArrayType _parent;
    }
    public Record firstRec() {
        if (this.firstRec != null)
            return this.firstRec;
        this.firstRec = recsAccessor().get(0);
        return this.firstRec;
    }
    public List<Record> recsAccessor() {
        if (this.recsAccessor != null)
            return this.recsAccessor;
        this.recsAccessor = records();
        return this.recsAccessor;
    }
    public List<Record> records() { return records; }
    public RepeatUntilCalcArrayType _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private Record firstRec;
    private List<Record> recsAccessor;
    private List<Record> records;
    private RepeatUntilCalcArrayType _root;
    private KaitaiStruct _parent;
}
