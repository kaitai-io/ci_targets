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

public class RepeatUntilCalcArrayType extends KaitaiStruct.ReadWrite {
    public static RepeatUntilCalcArrayType fromFile(String fileName) throws IOException {
        return new RepeatUntilCalcArrayType(new ByteBufferKaitaiStream(fileName));
    }
    public RepeatUntilCalcArrayType() {
        this(null, null, null);
    }

    public RepeatUntilCalcArrayType(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatUntilCalcArrayType(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public RepeatUntilCalcArrayType(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, RepeatUntilCalcArrayType _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw_records = new ArrayList<byte[]>();
        this.records = new ArrayList<Record>();
        {
            Record _it;
            int i = 0;
            do {
                byte[] _buf = this._io.readBytes(5);
                this._raw_records.add(_buf);
                KaitaiStream _io__raw_records = new ByteBufferKaitaiStream(_buf);
                Record _t_records = new Record(_io__raw_records, this, _root);
                try {
                    _t_records._read();
                } finally {
                    _it = _t_records;
                    this.records.add(_it);
                }
                i++;
            } while (!(_it.marker() == 170));
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.records.size(); i++) {
            this.records.get(((Number) (i)).intValue())._fetchInstances();
        }
    }

    public void _write_Seq() {
        this._raw_records = new ArrayList<byte[]>();
        for (int i = 0; i < this.records.size(); i++) {
            final KaitaiStream _io__raw_records = new ByteBufferKaitaiStream(5);
            this._io.addChildStream(_io__raw_records);
            {
                long _pos2 = this._io.pos();
                this._io.seek(this._io.pos() + (5));
                final RepeatUntilCalcArrayType _this = this;
                final int _i = i;
                _io__raw_records.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                    @Override
                    protected void write(KaitaiStream parent) {
                        byte[] _buf = _io__raw_records.toByteArray();
                        _this._raw_records.add(_buf);
                        if (_this._raw_records.get(((Number) (_i)).intValue()).length != 5)
                            throw new ConsistencyError("raw(records)", _this._raw_records.get(((Number) (_i)).intValue()).length, 5);
                        parent.writeBytes(_this._raw_records.get(((Number) (_i)).intValue()));
                    }
                });
            }
            this.records.get(((Number) (i)).intValue())._write_Seq(_io__raw_records);
        }
    }

    public void _check() {
        if (this.records.size() == 0)
            throw new ConsistencyError("records", this.records.size(), 0);
        for (int i = 0; i < this.records.size(); i++) {
            if (!Objects.equals(this.records.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("records", this.records.get(((Number) (i)).intValue())._root(), _root());
            if (!Objects.equals(this.records.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("records", this.records.get(((Number) (i)).intValue())._parent(), this);
            {
                Record _it = this.records.get(((Number) (i)).intValue());
                if ((_it.marker() == 170) != (i == this.records.size() - 1))
                    throw new ConsistencyError("records", _it.marker() == 170, i == this.records.size() - 1);
            }
        }
    }
    public static class Record extends KaitaiStruct.ReadWrite {
        public static Record fromFile(String fileName) throws IOException {
            return new Record(new ByteBufferKaitaiStream(fileName));
        }
        public Record() {
            this(null, null, null);
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
        }
        public void _read() {
            this.marker = this._io.readU1();
            this.body = this._io.readU4le();
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeU1(this.marker);
            this._io.writeU4le(this.body);
        }

        public void _check() {
        }
        private int marker;
        private long body;
        private RepeatUntilCalcArrayType _root;
        private RepeatUntilCalcArrayType _parent;
        public int marker() { return marker; }
        public void setMarker(int _v) { marker = _v; }
        public long body() { return body; }
        public void setBody(long _v) { body = _v; }
        public RepeatUntilCalcArrayType _root() { return _root; }
        public void set_root(RepeatUntilCalcArrayType _v) { _root = _v; }
        public RepeatUntilCalcArrayType _parent() { return _parent; }
        public void set_parent(RepeatUntilCalcArrayType _v) { _parent = _v; }
    }
    private Record firstRec;
    public Record firstRec() {
        if (this.firstRec != null)
            return this.firstRec;
        this.firstRec = recsAccessor().get(0);
        return this.firstRec;
    }
    public void _invalidateFirstRec() { this.firstRec = null; }
    private List<Record> recsAccessor;
    public List<Record> recsAccessor() {
        if (this.recsAccessor != null)
            return this.recsAccessor;
        this.recsAccessor = records();
        return this.recsAccessor;
    }
    public void _invalidateRecsAccessor() { this.recsAccessor = null; }
    private List<Record> records;
    private RepeatUntilCalcArrayType _root;
    private KaitaiStruct.ReadWrite _parent;
    private List<byte[]> _raw_records;
    public List<Record> records() { return records; }
    public void setRecords(List<Record> _v) { records = _v; }
    public RepeatUntilCalcArrayType _root() { return _root; }
    public void set_root(RepeatUntilCalcArrayType _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
    public List<byte[]> _raw_records() { return _raw_records; }
    public void set_raw_Records(List<byte[]> _v) { _raw_records = _v; }
}
