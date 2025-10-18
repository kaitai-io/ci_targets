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

public class ProcessCoerceBytes extends KaitaiStruct.ReadWrite {
    public static ProcessCoerceBytes fromFile(String fileName) throws IOException {
        return new ProcessCoerceBytes(new ByteBufferKaitaiStream(fileName));
    }
    public ProcessCoerceBytes() {
        this(null, null, null);
    }

    public ProcessCoerceBytes(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessCoerceBytes(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ProcessCoerceBytes(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ProcessCoerceBytes _root) {
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
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.records.size(); i++) {
            this.records.get(((Number) (i)).intValue())._fetchInstances();
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        for (int i = 0; i < this.records.size(); i++) {
            this.records.get(((Number) (i)).intValue())._write_Seq(this._io);
        }
    }

    public void _check() {
        if (this.records.size() != 2)
            throw new ConsistencyError("records", 2, this.records.size());
        for (int i = 0; i < this.records.size(); i++) {
            if (!Objects.equals(this.records.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("records", _root(), this.records.get(((Number) (i)).intValue())._root());
            if (!Objects.equals(this.records.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("records", this, this.records.get(((Number) (i)).intValue())._parent());
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

        public Record(KaitaiStream _io, ProcessCoerceBytes _parent) {
            this(_io, _parent, null);
        }

        public Record(KaitaiStream _io, ProcessCoerceBytes _parent, ProcessCoerceBytes _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.flag = this._io.readU1();
            if (flag() == 0) {
                this.bufUnproc = this._io.readBytes(4);
            }
            if (flag() != 0) {
                this._raw_bufProc = this._io.readBytes(4);
                this.bufProc = KaitaiStream.processXor(this._raw_bufProc, ((byte) 170));
            }
            _dirty = false;
        }

        public void _fetchInstances() {
            if (flag() == 0) {
            }
            if (flag() != 0) {
            }
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(this.flag);
            if (flag() == 0) {
                this._io.writeBytes(this.bufUnproc);
            }
            if (flag() != 0) {
                this._raw_bufProc = KaitaiStream.processXor(this.bufProc, ((Number) (170)).byteValue());
                if (this._raw_bufProc.length != 4)
                    throw new ConsistencyError("buf_proc", 4, this._raw_bufProc.length);
                this._io.writeBytes(this._raw_bufProc);
            }
        }

        public void _check() {
            if (flag() == 0) {
                if (this.bufUnproc.length != 4)
                    throw new ConsistencyError("buf_unproc", 4, this.bufUnproc.length);
            }
            if (flag() != 0) {
            }
            _dirty = false;
        }
        public byte[] buf() {
            if (this.buf != null)
                return this.buf;
            this.buf = (flag() == 0 ? bufUnproc() : bufProc());
            return this.buf;
        }
        public void _invalidateBuf() { this.buf = null; }
        public int flag() { return flag; }
        public void setFlag(int _v) { _dirty = true; flag = _v; }
        public byte[] bufUnproc() { return bufUnproc; }
        public void setBufUnproc(byte[] _v) { _dirty = true; bufUnproc = _v; }
        public byte[] bufProc() { return bufProc; }
        public void setBufProc(byte[] _v) { _dirty = true; bufProc = _v; }
        public ProcessCoerceBytes _root() { return _root; }
        public void set_root(ProcessCoerceBytes _v) { _dirty = true; _root = _v; }
        public ProcessCoerceBytes _parent() { return _parent; }
        public void set_parent(ProcessCoerceBytes _v) { _dirty = true; _parent = _v; }
        public byte[] _raw_bufProc() { return _raw_bufProc; }
        public void set_raw_BufProc(byte[] _v) { _dirty = true; _raw_bufProc = _v; }
        private byte[] buf;
        private int flag;
        private byte[] bufUnproc;
        private byte[] bufProc;
        private ProcessCoerceBytes _root;
        private ProcessCoerceBytes _parent;
        private byte[] _raw_bufProc;
    }
    public List<Record> records() { return records; }
    public void setRecords(List<Record> _v) { _dirty = true; records = _v; }
    public ProcessCoerceBytes _root() { return _root; }
    public void set_root(ProcessCoerceBytes _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private List<Record> records;
    private ProcessCoerceBytes _root;
    private KaitaiStruct.ReadWrite _parent;
}
