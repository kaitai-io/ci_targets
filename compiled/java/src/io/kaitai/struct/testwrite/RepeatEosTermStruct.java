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

public class RepeatEosTermStruct extends KaitaiStruct.ReadWrite {
    public static RepeatEosTermStruct fromFile(String fileName) throws IOException {
        return new RepeatEosTermStruct(new ByteBufferKaitaiStream(fileName));
    }
    public RepeatEosTermStruct() {
        this(null, null, null);
    }

    public RepeatEosTermStruct(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatEosTermStruct(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public RepeatEosTermStruct(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, RepeatEosTermStruct _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw_records = new ArrayList<byte[]>();
        this.records_OuterSize = new ArrayList<Integer>();
        this.records = new ArrayList<BytesWrapper>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this._raw_records.add(this._io.readBytesTerm((byte) 178, true, true, true));
                this.records_OuterSize.add(this._raw_records.get(((Number) (i)).intValue()).length);
                KaitaiStream _io__raw_records = new ByteBufferKaitaiStream(this._raw_records.get(this._raw_records.size() - 1));
                BytesWrapper _t_records = new BytesWrapper(_io__raw_records, this, _root);
                try {
                    _t_records._read();
                } finally {
                    this.records.add(_t_records);
                }
                i++;
            }
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
            if (this._io.isEof())
                throw new ConsistencyError("records", 0, this._io.size() - this._io.pos());
            final KaitaiStream _io__raw_records = new ByteBufferKaitaiStream(this.records_OuterSize.get(((Number) (i)).intValue()));
            this._io.addChildStream(_io__raw_records);
            {
                long _pos2 = this._io.pos();
                this._io.seek(this._io.pos() + (this.records_OuterSize.get(((Number) (i)).intValue())));
                final RepeatEosTermStruct _this = this;
                final int _i = i;
                _io__raw_records.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                    @Override
                    protected void write(KaitaiStream parent) {
                        _this._raw_records.add(_io__raw_records.toByteArray());
                        if (_this._raw_records.get(((Number) (_i)).intValue()).length == 0)
                            throw new ConsistencyError("raw(records)", 0, _this._raw_records.get(((Number) (_i)).intValue()).length);
                        if (KaitaiStream.byteArrayIndexOf(_this._raw_records.get(((Number) (_i)).intValue()), ((byte) 178)) != _this._raw_records.get(((Number) (_i)).intValue()).length - 1)
                            throw new ConsistencyError("raw(records)", _this._raw_records.get(((Number) (_i)).intValue()).length - 1, KaitaiStream.byteArrayIndexOf(_this._raw_records.get(((Number) (_i)).intValue()), ((byte) 178)));
                        parent.writeBytes(_this._raw_records.get(((Number) (_i)).intValue()));
                    }
                });
            }
            this.records.get(((Number) (i)).intValue())._write_Seq(_io__raw_records);
        }
        if (!(this._io.isEof()))
            throw new ConsistencyError("records", 0, this._io.size() - this._io.pos());
    }

    public void _check() {
        for (int i = 0; i < this.records.size(); i++) {
            if (!Objects.equals(this.records.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("records", _root(), this.records.get(((Number) (i)).intValue())._root());
            if (!Objects.equals(this.records.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("records", this, this.records.get(((Number) (i)).intValue())._parent());
        }
        _dirty = false;
    }
    public static class BytesWrapper extends KaitaiStruct.ReadWrite {
        public static BytesWrapper fromFile(String fileName) throws IOException {
            return new BytesWrapper(new ByteBufferKaitaiStream(fileName));
        }
        public BytesWrapper() {
            this(null, null, null);
        }

        public BytesWrapper(KaitaiStream _io) {
            this(_io, null, null);
        }

        public BytesWrapper(KaitaiStream _io, RepeatEosTermStruct _parent) {
            this(_io, _parent, null);
        }

        public BytesWrapper(KaitaiStream _io, RepeatEosTermStruct _parent, RepeatEosTermStruct _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.value = this._io.readBytesFull();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytes(this.value);
            if (!(this._io.isEof()))
                throw new ConsistencyError("value", 0, this._io.size() - this._io.pos());
        }

        public void _check() {
            _dirty = false;
        }
        public byte[] value() { return value; }
        public void setValue(byte[] _v) { _dirty = true; value = _v; }
        public RepeatEosTermStruct _root() { return _root; }
        public void set_root(RepeatEosTermStruct _v) { _dirty = true; _root = _v; }
        public RepeatEosTermStruct _parent() { return _parent; }
        public void set_parent(RepeatEosTermStruct _v) { _dirty = true; _parent = _v; }
        private byte[] value;
        private RepeatEosTermStruct _root;
        private RepeatEosTermStruct _parent;
    }
    public List<BytesWrapper> records() { return records; }
    public void setRecords(List<BytesWrapper> _v) { _dirty = true; records = _v; }
    public RepeatEosTermStruct _root() { return _root; }
    public void set_root(RepeatEosTermStruct _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public List<byte[]> _raw_records() { return _raw_records; }
    public void set_raw_Records(List<byte[]> _v) { _dirty = true; _raw_records = _v; }
    public List<Integer> records_OuterSize() { return records_OuterSize; }
    public void setRecords_OuterSize(List<Integer> _v) { _dirty = true; records_OuterSize = _v; }
    private List<BytesWrapper> records;
    private RepeatEosTermStruct _root;
    private KaitaiStruct.ReadWrite _parent;
    private List<byte[]> _raw_records;
    private List<Integer> records_OuterSize;
}
