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

public class RepeatNTermStruct extends KaitaiStruct.ReadWrite {
    public static RepeatNTermStruct fromFile(String fileName) throws IOException {
        return new RepeatNTermStruct(new ByteBufferKaitaiStream(fileName));
    }
    public RepeatNTermStruct() {
        this(null, null, null);
    }

    public RepeatNTermStruct(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatNTermStruct(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public RepeatNTermStruct(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, RepeatNTermStruct _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw_records1 = new ArrayList<byte[]>();
        this.records1_OuterSize = new ArrayList<Integer>();
        this.records1 = new ArrayList<BytesWrapper>();
        for (int i = 0; i < 2; i++) {
            this._raw_records1.add(this._io.readBytesTerm((byte) 170, false, true, true));
            this.records1_OuterSize.add(this._raw_records1.get(((Number) (i)).intValue()).length);
            KaitaiStream _io__raw_records1 = new ByteBufferKaitaiStream(this._raw_records1.get(i));
            BytesWrapper _t_records1 = new BytesWrapper(_io__raw_records1, this, _root);
            try {
                _t_records1._read();
            } finally {
                this.records1.add(_t_records1);
            }
        }
        this._raw_records2 = new ArrayList<byte[]>();
        this.records2_OuterSize = new ArrayList<Integer>();
        this.records2 = new ArrayList<BytesWrapper>();
        for (int i = 0; i < 2; i++) {
            this._raw_records2.add(this._io.readBytesTerm((byte) 170, true, true, true));
            this.records2_OuterSize.add(this._raw_records2.get(((Number) (i)).intValue()).length);
            KaitaiStream _io__raw_records2 = new ByteBufferKaitaiStream(this._raw_records2.get(i));
            BytesWrapper _t_records2 = new BytesWrapper(_io__raw_records2, this, _root);
            try {
                _t_records2._read();
            } finally {
                this.records2.add(_t_records2);
            }
        }
        this._raw_records3 = new ArrayList<byte[]>();
        this.records3_OuterSize = new ArrayList<Integer>();
        this.records3 = new ArrayList<BytesWrapper>();
        for (int i = 0; i < 2; i++) {
            this._raw_records3.add(this._io.readBytesTerm((byte) 85, false, false, true));
            this.records3_OuterSize.add(this._raw_records3.get(((Number) (i)).intValue()).length);
            KaitaiStream _io__raw_records3 = new ByteBufferKaitaiStream(this._raw_records3.get(i));
            BytesWrapper _t_records3 = new BytesWrapper(_io__raw_records3, this, _root);
            try {
                _t_records3._read();
            } finally {
                this.records3.add(_t_records3);
            }
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.records1.size(); i++) {
            this.records1.get(((Number) (i)).intValue())._fetchInstances();
        }
        for (int i = 0; i < this.records2.size(); i++) {
            this.records2.get(((Number) (i)).intValue())._fetchInstances();
        }
        for (int i = 0; i < this.records3.size(); i++) {
            this.records3.get(((Number) (i)).intValue())._fetchInstances();
        }
    }

    public void _write_Seq() {
        this._raw_records1 = new ArrayList<byte[]>();
        for (int i = 0; i < this.records1.size(); i++) {
            final KaitaiStream _io__raw_records1 = new ByteBufferKaitaiStream(this.records1_OuterSize.get(((Number) (i)).intValue()));
            this._io.addChildStream(_io__raw_records1);
            {
                long _pos2 = this._io.pos();
                this._io.seek(this._io.pos() + (this.records1_OuterSize.get(((Number) (i)).intValue())));
                this._io.seek(this._io.pos() + (1));
                final RepeatNTermStruct _this = this;
                final int _i = i;
                _io__raw_records1.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                    @Override
                    protected void write(KaitaiStream parent) {
                        _this._raw_records1.add(_io__raw_records1.toByteArray());
                        if (KaitaiStream.byteArrayIndexOf(_this._raw_records1.get(((Number) (_i)).intValue()), ((byte) 170)) != -1)
                            throw new ConsistencyError("raw(records1)", KaitaiStream.byteArrayIndexOf(_this._raw_records1.get(((Number) (_i)).intValue()), ((byte) 170)), -1);
                        parent.writeBytes(_this._raw_records1.get(((Number) (_i)).intValue()));
                        parent.writeU1(170);
                    }
                });
            }
            this.records1.get(((Number) (i)).intValue())._write_Seq(_io__raw_records1);
        }
        this._raw_records2 = new ArrayList<byte[]>();
        for (int i = 0; i < this.records2.size(); i++) {
            final KaitaiStream _io__raw_records2 = new ByteBufferKaitaiStream(this.records2_OuterSize.get(((Number) (i)).intValue()));
            this._io.addChildStream(_io__raw_records2);
            {
                long _pos2 = this._io.pos();
                this._io.seek(this._io.pos() + (this.records2_OuterSize.get(((Number) (i)).intValue())));
                final RepeatNTermStruct _this = this;
                final int _i = i;
                _io__raw_records2.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                    @Override
                    protected void write(KaitaiStream parent) {
                        _this._raw_records2.add(_io__raw_records2.toByteArray());
                        if (_this._raw_records2.get(((Number) (_i)).intValue()).length == 0)
                            throw new ConsistencyError("raw(records2)", _this._raw_records2.get(((Number) (_i)).intValue()).length, 0);
                        if (KaitaiStream.byteArrayIndexOf(_this._raw_records2.get(((Number) (_i)).intValue()), ((byte) 170)) != _this._raw_records2.get(((Number) (_i)).intValue()).length - 1)
                            throw new ConsistencyError("raw(records2)", KaitaiStream.byteArrayIndexOf(_this._raw_records2.get(((Number) (_i)).intValue()), ((byte) 170)), _this._raw_records2.get(((Number) (_i)).intValue()).length - 1);
                        parent.writeBytes(_this._raw_records2.get(((Number) (_i)).intValue()));
                    }
                });
            }
            this.records2.get(((Number) (i)).intValue())._write_Seq(_io__raw_records2);
        }
        this._raw_records3 = new ArrayList<byte[]>();
        for (int i = 0; i < this.records3.size(); i++) {
            final KaitaiStream _io__raw_records3 = new ByteBufferKaitaiStream(this.records3_OuterSize.get(((Number) (i)).intValue()));
            this._io.addChildStream(_io__raw_records3);
            {
                long _pos2 = this._io.pos();
                this._io.seek(this._io.pos() + (this.records3_OuterSize.get(((Number) (i)).intValue())));
                final RepeatNTermStruct _this = this;
                final int _i = i;
                _io__raw_records3.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                    @Override
                    protected void write(KaitaiStream parent) {
                        _this._raw_records3.add(_io__raw_records3.toByteArray());
                        if (KaitaiStream.byteArrayIndexOf(_this._raw_records3.get(((Number) (_i)).intValue()), ((byte) 85)) != -1)
                            throw new ConsistencyError("raw(records3)", KaitaiStream.byteArrayIndexOf(_this._raw_records3.get(((Number) (_i)).intValue()), ((byte) 85)), -1);
                        parent.writeBytes(_this._raw_records3.get(((Number) (_i)).intValue()));
                        {
                            long _pos = parent.pos();
                            parent.writeU1(85);
                            parent.seek(_pos);
                        }
                    }
                });
            }
            this.records3.get(((Number) (i)).intValue())._write_Seq(_io__raw_records3);
        }
    }

    public void _check() {
        if (this.records1.size() != 2)
            throw new ConsistencyError("records1", this.records1.size(), 2);
        for (int i = 0; i < this.records1.size(); i++) {
            if (!Objects.equals(this.records1.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("records1", this.records1.get(((Number) (i)).intValue())._root(), _root());
            if (!Objects.equals(this.records1.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("records1", this.records1.get(((Number) (i)).intValue())._parent(), this);
        }
        if (this.records2.size() != 2)
            throw new ConsistencyError("records2", this.records2.size(), 2);
        for (int i = 0; i < this.records2.size(); i++) {
            if (!Objects.equals(this.records2.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("records2", this.records2.get(((Number) (i)).intValue())._root(), _root());
            if (!Objects.equals(this.records2.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("records2", this.records2.get(((Number) (i)).intValue())._parent(), this);
        }
        if (this.records3.size() != 2)
            throw new ConsistencyError("records3", this.records3.size(), 2);
        for (int i = 0; i < this.records3.size(); i++) {
            if (!Objects.equals(this.records3.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("records3", this.records3.get(((Number) (i)).intValue())._root(), _root());
            if (!Objects.equals(this.records3.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("records3", this.records3.get(((Number) (i)).intValue())._parent(), this);
        }
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

        public BytesWrapper(KaitaiStream _io, RepeatNTermStruct _parent) {
            this(_io, _parent, null);
        }

        public BytesWrapper(KaitaiStream _io, RepeatNTermStruct _parent, RepeatNTermStruct _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.value = this._io.readBytesFull();
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeBytes(this.value);
            if (!(this._io.isEof()))
                throw new ConsistencyError("value", this._io.size() - this._io.pos(), 0);
        }

        public void _check() {
        }
        private byte[] value;
        private RepeatNTermStruct _root;
        private RepeatNTermStruct _parent;
        public byte[] value() { return value; }
        public void setValue(byte[] _v) { value = _v; }
        public RepeatNTermStruct _root() { return _root; }
        public void set_root(RepeatNTermStruct _v) { _root = _v; }
        public RepeatNTermStruct _parent() { return _parent; }
        public void set_parent(RepeatNTermStruct _v) { _parent = _v; }
    }
    private List<BytesWrapper> records1;
    private List<BytesWrapper> records2;
    private List<BytesWrapper> records3;
    private RepeatNTermStruct _root;
    private KaitaiStruct.ReadWrite _parent;
    private List<byte[]> _raw_records1;
    private List<Integer> records1_OuterSize;
    private List<byte[]> _raw_records2;
    private List<Integer> records2_OuterSize;
    private List<byte[]> _raw_records3;
    private List<Integer> records3_OuterSize;
    public List<BytesWrapper> records1() { return records1; }
    public void setRecords1(List<BytesWrapper> _v) { records1 = _v; }
    public List<BytesWrapper> records2() { return records2; }
    public void setRecords2(List<BytesWrapper> _v) { records2 = _v; }
    public List<BytesWrapper> records3() { return records3; }
    public void setRecords3(List<BytesWrapper> _v) { records3 = _v; }
    public RepeatNTermStruct _root() { return _root; }
    public void set_root(RepeatNTermStruct _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
    public List<byte[]> _raw_records1() { return _raw_records1; }
    public void set_raw_Records1(List<byte[]> _v) { _raw_records1 = _v; }
    public List<Integer> records1_OuterSize() { return records1_OuterSize; }
    public void setRecords1_OuterSize(List<Integer> _v) { records1_OuterSize = _v; }
    public List<byte[]> _raw_records2() { return _raw_records2; }
    public void set_raw_Records2(List<byte[]> _v) { _raw_records2 = _v; }
    public List<Integer> records2_OuterSize() { return records2_OuterSize; }
    public void setRecords2_OuterSize(List<Integer> _v) { records2_OuterSize = _v; }
    public List<byte[]> _raw_records3() { return _raw_records3; }
    public void set_raw_Records3(List<byte[]> _v) { _raw_records3 = _v; }
    public List<Integer> records3_OuterSize() { return records3_OuterSize; }
    public void setRecords3_OuterSize(List<Integer> _v) { records3_OuterSize = _v; }
}
