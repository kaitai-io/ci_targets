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

public class ProcessCoerceUsertype1 extends KaitaiStruct.ReadWrite {
    public static ProcessCoerceUsertype1 fromFile(String fileName) throws IOException {
        return new ProcessCoerceUsertype1(new ByteBufferKaitaiStream(fileName));
    }
    public ProcessCoerceUsertype1() {
        this(null, null, null);
    }

    public ProcessCoerceUsertype1(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessCoerceUsertype1(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ProcessCoerceUsertype1(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ProcessCoerceUsertype1 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.records = new ArrayList<Record>();
        for (int i = 0; i < 2; i++) {
            Record _t_records = new Record(this._io, this, _root);
            try {
                _t_records._read();
            } finally {
                this.records.add(_t_records);
            }
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.records.size(); i++) {
            this.records.get(((Number) (i)).intValue())._fetchInstances();
        }
    }

    public void _write_Seq() {
        for (int i = 0; i < this.records.size(); i++) {
            this.records.get(((Number) (i)).intValue())._write_Seq(this._io);
        }
    }

    public void _check() {
        if (this.records.size() != 2)
            throw new ConsistencyError("records", this.records.size(), 2);
        for (int i = 0; i < this.records.size(); i++) {
            if (!Objects.equals(this.records.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("records", this.records.get(((Number) (i)).intValue())._root(), _root());
            if (!Objects.equals(this.records.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("records", this.records.get(((Number) (i)).intValue())._parent(), this);
        }
    }
    public static class Foo extends KaitaiStruct.ReadWrite {
        public static Foo fromFile(String fileName) throws IOException {
            return new Foo(new ByteBufferKaitaiStream(fileName));
        }
        public Foo() {
            this(null, null, null);
        }

        public Foo(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Foo(KaitaiStream _io, ProcessCoerceUsertype1.Record _parent) {
            this(_io, _parent, null);
        }

        public Foo(KaitaiStream _io, ProcessCoerceUsertype1.Record _parent, ProcessCoerceUsertype1 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.value = this._io.readU4le();
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeU4le(this.value);
        }

        public void _check() {
        }
        private long value;
        private ProcessCoerceUsertype1 _root;
        private ProcessCoerceUsertype1.Record _parent;
        public long value() { return value; }
        public void setValue(long _v) { value = _v; }
        public ProcessCoerceUsertype1 _root() { return _root; }
        public void set_root(ProcessCoerceUsertype1 _v) { _root = _v; }
        public ProcessCoerceUsertype1.Record _parent() { return _parent; }
        public void set_parent(ProcessCoerceUsertype1.Record _v) { _parent = _v; }
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

        public Record(KaitaiStream _io, ProcessCoerceUsertype1 _parent) {
            this(_io, _parent, null);
        }

        public Record(KaitaiStream _io, ProcessCoerceUsertype1 _parent, ProcessCoerceUsertype1 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.flag = this._io.readU1();
            if (flag() == 0) {
                this._raw_bufUnproc = this._io.readBytes(4);
                KaitaiStream _io__raw_bufUnproc = new ByteBufferKaitaiStream(this._raw_bufUnproc);
                this.bufUnproc = new Foo(_io__raw_bufUnproc, this, _root);
                this.bufUnproc._read();
            }
            if (flag() != 0) {
                this._raw__raw_bufProc = this._io.readBytes(4);
                this._raw_bufProc = KaitaiStream.processXor(this._raw__raw_bufProc, ((byte) 170));
                KaitaiStream _io__raw_bufProc = new ByteBufferKaitaiStream(this._raw_bufProc);
                this.bufProc = new Foo(_io__raw_bufProc, this, _root);
                this.bufProc._read();
            }
        }

        public void _fetchInstances() {
            if (flag() == 0) {
                this.bufUnproc._fetchInstances();
            }
            if (flag() != 0) {
                this.bufProc._fetchInstances();
            }
        }

        public void _write_Seq() {
            this._io.writeU1(this.flag);
            if (flag() == 0) {
                final KaitaiStream _io__raw_bufUnproc = new ByteBufferKaitaiStream(4);
                this._io.addChildStream(_io__raw_bufUnproc);
                {
                    long _pos2 = this._io.pos();
                    this._io.seek(this._io.pos() + (4));
                    final Record _this = this;
                    _io__raw_bufUnproc.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                        @Override
                        protected void write(KaitaiStream parent) {
                            _this._raw_bufUnproc = _io__raw_bufUnproc.toByteArray();
                            if (_this._raw_bufUnproc.length != 4)
                                throw new ConsistencyError("raw(buf_unproc)", _this._raw_bufUnproc.length, 4);
                            parent.writeBytes(_this._raw_bufUnproc);
                        }
                    });
                }
                this.bufUnproc._write_Seq(_io__raw_bufUnproc);
            }
            if (flag() != 0) {
                final KaitaiStream _io__raw_bufProc = new ByteBufferKaitaiStream(4);
                this._io.addChildStream(_io__raw_bufProc);
                {
                    long _pos2 = this._io.pos();
                    this._io.seek(this._io.pos() + (4));
                    final int _processXorArg = 170;
                    final Record _this = this;
                    _io__raw_bufProc.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                        @Override
                        protected void write(KaitaiStream parent) {
                            _this._raw_bufProc = _io__raw_bufProc.toByteArray();
                            _this._raw__raw_bufProc = KaitaiStream.processXor(_this._raw_bufProc, ((Number) (_processXorArg)).byteValue());
                            if (_this._raw__raw_bufProc.length != 4)
                                throw new ConsistencyError("raw(buf_proc)", _this._raw__raw_bufProc.length, 4);
                            parent.writeBytes(_this._raw__raw_bufProc);
                        }
                    });
                }
                this.bufProc._write_Seq(_io__raw_bufProc);
            }
        }

        public void _check() {
            if (flag() == 0) {
                if (!Objects.equals(this.bufUnproc._root(), _root()))
                    throw new ConsistencyError("buf_unproc", this.bufUnproc._root(), _root());
                if (!Objects.equals(this.bufUnproc._parent(), this))
                    throw new ConsistencyError("buf_unproc", this.bufUnproc._parent(), this);
            }
            if (flag() != 0) {
                if (!Objects.equals(this.bufProc._root(), _root()))
                    throw new ConsistencyError("buf_proc", this.bufProc._root(), _root());
                if (!Objects.equals(this.bufProc._parent(), this))
                    throw new ConsistencyError("buf_proc", this.bufProc._parent(), this);
            }
        }
        private Foo buf;
        public Foo buf() {
            if (this.buf != null)
                return this.buf;
            this.buf = (flag() == 0 ? bufUnproc() : bufProc());
            return this.buf;
        }
        public void _invalidateBuf() { this.buf = null; }
        private int flag;
        private Foo bufUnproc;
        private Foo bufProc;
        private ProcessCoerceUsertype1 _root;
        private ProcessCoerceUsertype1 _parent;
        private byte[] _raw_bufUnproc;
        private byte[] _raw_bufProc;
        private byte[] _raw__raw_bufProc;
        public int flag() { return flag; }
        public void setFlag(int _v) { flag = _v; }
        public Foo bufUnproc() { return bufUnproc; }
        public void setBufUnproc(Foo _v) { bufUnproc = _v; }
        public Foo bufProc() { return bufProc; }
        public void setBufProc(Foo _v) { bufProc = _v; }
        public ProcessCoerceUsertype1 _root() { return _root; }
        public void set_root(ProcessCoerceUsertype1 _v) { _root = _v; }
        public ProcessCoerceUsertype1 _parent() { return _parent; }
        public void set_parent(ProcessCoerceUsertype1 _v) { _parent = _v; }
        public byte[] _raw_bufUnproc() { return _raw_bufUnproc; }
        public void set_raw_BufUnproc(byte[] _v) { _raw_bufUnproc = _v; }
        public byte[] _raw_bufProc() { return _raw_bufProc; }
        public void set_raw_BufProc(byte[] _v) { _raw_bufProc = _v; }
        public byte[] _raw__raw_bufProc() { return _raw__raw_bufProc; }
        public void set_raw__raw_BufProc(byte[] _v) { _raw__raw_bufProc = _v; }
    }
    private List<Record> records;
    private ProcessCoerceUsertype1 _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<Record> records() { return records; }
    public void setRecords(List<Record> _v) { records = _v; }
    public ProcessCoerceUsertype1 _root() { return _root; }
    public void set_root(ProcessCoerceUsertype1 _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
