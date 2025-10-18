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

public class RepeatUntilSized extends KaitaiStruct.ReadWrite {
    public static RepeatUntilSized fromFile(String fileName) throws IOException {
        return new RepeatUntilSized(new ByteBufferKaitaiStream(fileName));
    }
    public RepeatUntilSized() {
        this(null, null, null);
    }

    public RepeatUntilSized(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatUntilSized(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public RepeatUntilSized(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, RepeatUntilSized _root) {
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
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.records.size(); i++) {
            this.records.get(((Number) (i)).intValue())._fetchInstances();
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._raw_records = new ArrayList<byte[]>();
        for (int i = 0; i < this.records.size(); i++) {
            final KaitaiStream _io__raw_records = new ByteBufferKaitaiStream(5);
            this._io.addChildStream(_io__raw_records);
            {
                long _pos2 = this._io.pos();
                this._io.seek(this._io.pos() + (5));
                final RepeatUntilSized _this = this;
                final int _i = i;
                _io__raw_records.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                    @Override
                    protected void write(KaitaiStream parent) {
                        byte[] _buf = _io__raw_records.toByteArray();
                        _this._raw_records.add(_buf);
                        if (_this._raw_records.get(((Number) (_i)).intValue()).length != 5)
                            throw new ConsistencyError("raw(records)", 5, _this._raw_records.get(((Number) (_i)).intValue()).length);
                        parent.writeBytes(_this._raw_records.get(((Number) (_i)).intValue()));
                    }
                });
            }
            this.records.get(((Number) (i)).intValue())._write_Seq(_io__raw_records);
        }
    }

    public void _check() {
        if (this.records.size() == 0)
            throw new ConsistencyError("records", 0, this.records.size());
        for (int i = 0; i < this.records.size(); i++) {
            if (!Objects.equals(this.records.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("records", _root(), this.records.get(((Number) (i)).intValue())._root());
            if (!Objects.equals(this.records.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("records", this, this.records.get(((Number) (i)).intValue())._parent());
            {
                Record _it = this.records.get(((Number) (i)).intValue());
                if ((_it.marker() == 170) != (i == this.records.size() - 1))
                    throw new ConsistencyError("records", i == this.records.size() - 1, _it.marker() == 170);
            }
        }
        _dirty = false;
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

        public Record(KaitaiStream _io, RepeatUntilSized _parent) {
            this(_io, _parent, null);
        }

        public Record(KaitaiStream _io, RepeatUntilSized _parent, RepeatUntilSized _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.marker = this._io.readU1();
            this.body = this._io.readU4le();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(this.marker);
            this._io.writeU4le(this.body);
        }

        public void _check() {
            _dirty = false;
        }
        public int marker() { return marker; }
        public void setMarker(int _v) { _dirty = true; marker = _v; }
        public long body() { return body; }
        public void setBody(long _v) { _dirty = true; body = _v; }
        public RepeatUntilSized _root() { return _root; }
        public void set_root(RepeatUntilSized _v) { _dirty = true; _root = _v; }
        public RepeatUntilSized _parent() { return _parent; }
        public void set_parent(RepeatUntilSized _v) { _dirty = true; _parent = _v; }
        private int marker;
        private long body;
        private RepeatUntilSized _root;
        private RepeatUntilSized _parent;
    }
    public List<Record> records() { return records; }
    public void setRecords(List<Record> _v) { _dirty = true; records = _v; }
    public RepeatUntilSized _root() { return _root; }
    public void set_root(RepeatUntilSized _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public List<byte[]> _raw_records() { return _raw_records; }
    public void set_raw_Records(List<byte[]> _v) { _dirty = true; _raw_records = _v; }
    private List<Record> records;
    private RepeatUntilSized _root;
    private KaitaiStruct.ReadWrite _parent;
    private List<byte[]> _raw_records;
}
