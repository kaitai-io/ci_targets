// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;

public class ProcessCoerceUsertype2 extends KaitaiStruct {
    public static ProcessCoerceUsertype2 fromFile(String fileName) throws IOException {
        return new ProcessCoerceUsertype2(new ByteBufferKaitaiStream(fileName));
    }

    public ProcessCoerceUsertype2(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessCoerceUsertype2(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ProcessCoerceUsertype2(KaitaiStream _io, KaitaiStruct _parent, ProcessCoerceUsertype2 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.records = new ArrayList<Record>();
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

        public Record(KaitaiStream _io, ProcessCoerceUsertype2 _parent) {
            this(_io, _parent, null);
        }

        public Record(KaitaiStream _io, ProcessCoerceUsertype2 _parent, ProcessCoerceUsertype2 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.flag = this._io.readU1();
            if (flag() == 0) {
                this.bufUnproc = new Foo(this._io, this, _root);
            }
            if (flag() != 0) {
                this._raw__raw_bufProc = this._io.readBytes(4);
                this._raw_bufProc = KaitaiStream.processXor(_raw__raw_bufProc, ((byte) (170)));
                KaitaiStream _io__raw_bufProc = new ByteBufferKaitaiStream(_raw_bufProc);
                this.bufProc = new Foo(_io__raw_bufProc, this, _root);
            }
        }
        private Foo buf;
        public Foo buf() {
            if (this.buf != null)
                return this.buf;
            this.buf = (flag() == 0 ? bufUnproc() : bufProc());
            return this.buf;
        }
        private int flag;
        private Foo bufUnproc;
        private Foo bufProc;
        private ProcessCoerceUsertype2 _root;
        private ProcessCoerceUsertype2 _parent;
        private byte[] _raw_bufProc;
        private byte[] _raw__raw_bufProc;
        public int flag() { return flag; }
        public Foo bufUnproc() { return bufUnproc; }
        public Foo bufProc() { return bufProc; }
        public ProcessCoerceUsertype2 _root() { return _root; }
        public ProcessCoerceUsertype2 _parent() { return _parent; }
        public byte[] _raw_bufProc() { return _raw_bufProc; }
        public byte[] _raw__raw_bufProc() { return _raw__raw_bufProc; }
    }
    public static class Foo extends KaitaiStruct {
        public static Foo fromFile(String fileName) throws IOException {
            return new Foo(new ByteBufferKaitaiStream(fileName));
        }

        public Foo(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Foo(KaitaiStream _io, ProcessCoerceUsertype2.Record _parent) {
            this(_io, _parent, null);
        }

        public Foo(KaitaiStream _io, ProcessCoerceUsertype2.Record _parent, ProcessCoerceUsertype2 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.value = this._io.readU4le();
        }
        private long value;
        private ProcessCoerceUsertype2 _root;
        private ProcessCoerceUsertype2.Record _parent;
        public long value() { return value; }
        public ProcessCoerceUsertype2 _root() { return _root; }
        public ProcessCoerceUsertype2.Record _parent() { return _parent; }
    }
    private ArrayList<Record> records;
    private ProcessCoerceUsertype2 _root;
    private KaitaiStruct _parent;
    public ArrayList<Record> records() { return records; }
    public ProcessCoerceUsertype2 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
