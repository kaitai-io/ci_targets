// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;

public class ProcessCoerceBytes extends KaitaiStruct {
    public static ProcessCoerceBytes fromFile(String fileName) throws IOException {
        return new ProcessCoerceBytes(new ByteBufferKaitaiStream(fileName));
    }

    public ProcessCoerceBytes(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessCoerceBytes(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ProcessCoerceBytes(KaitaiStream _io, KaitaiStruct _parent, ProcessCoerceBytes _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        records = new ArrayList<Record>(((Number) (2)).intValue());
        for (int i = 0; i < 2; i++) {
            this.records.add(new Record(this._io, this, _root));
        }
    }
    public static class Record extends KaitaiStruct {
        public static Record fromFile(String fileName) throws IOException {
            return new Record(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            this.flag = this._io.readU1();
            if (flag() == 0) {
                this.bufUnproc = this._io.readBytes(4);
            }
            if (flag() != 0) {
                this._raw_bufProc = this._io.readBytes(4);
                this.bufProc = KaitaiStream.processXor(_raw_bufProc, 170);
            }
        }
        private byte[] buf;
        public byte[] buf() {
            if (this.buf != null)
                return this.buf;
            this.buf = (flag() == 0 ? bufUnproc() : bufProc());
            return this.buf;
        }
        private int flag;
        private byte[] bufUnproc;
        private byte[] bufProc;
        private ProcessCoerceBytes _root;
        private ProcessCoerceBytes _parent;
        private byte[] _raw_bufProc;
        public int flag() { return flag; }
        public byte[] bufUnproc() { return bufUnproc; }
        public byte[] bufProc() { return bufProc; }
        public ProcessCoerceBytes _root() { return _root; }
        public ProcessCoerceBytes _parent() { return _parent; }
        public byte[] _raw_bufProc() { return _raw_bufProc; }
    }
    private ArrayList<Record> records;
    private ProcessCoerceBytes _root;
    private KaitaiStruct _parent;
    public ArrayList<Record> records() { return records; }
    public ProcessCoerceBytes _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
