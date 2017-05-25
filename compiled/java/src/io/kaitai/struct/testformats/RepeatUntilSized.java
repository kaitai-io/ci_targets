// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;

public class RepeatUntilSized extends KaitaiStruct {
    public static RepeatUntilSized fromFile(String fileName) throws IOException {
        return new RepeatUntilSized(new KaitaiStream(fileName));
    }

    public RepeatUntilSized(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _init();
    }

    public RepeatUntilSized(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _init();
    }

    public RepeatUntilSized(KaitaiStream _io, KaitaiStruct _parent, RepeatUntilSized _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _init();
    }

    private void _init() {
        _read();
    }
    private void _read() {
        this._raw_records = new ArrayList<byte[]>();
        this.records = new ArrayList<Record>();
        {
            Record _it;
            do {
                byte[] _buf = this._io.readBytes(5);
                this._raw_records.add(_buf);
                KaitaiStream _io__raw_records = new KaitaiStream(_buf);
                _it = new Record(_io__raw_records, this, _root);
                this.records.add(_it);
            } while (!(_it.marker() == 170));
        }
    }
    public static class Record extends KaitaiStruct {
        public static Record fromFile(String fileName) throws IOException {
            return new Record(new KaitaiStream(fileName));
        }

        public Record(KaitaiStream _io) {
            super(_io);
            _init();
        }

        public Record(KaitaiStream _io, RepeatUntilSized _parent) {
            super(_io);
            this._parent = _parent;
            _init();
        }

        public Record(KaitaiStream _io, RepeatUntilSized _parent, RepeatUntilSized _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _init();
        }

        private void _init() {
            _read();
        }
        private void _read() {
            this.marker = this._io.readU1();
            this.body = this._io.readU4le();
        }
        private int marker;
        private long body;
        private RepeatUntilSized _root;
        private RepeatUntilSized _parent;
        public int marker() { return marker; }
        public long body() { return body; }
        public RepeatUntilSized _root() { return _root; }
        public RepeatUntilSized _parent() { return _parent; }
    }
    private ArrayList<Record> records;
    private RepeatUntilSized _root;
    private KaitaiStruct _parent;
    private ArrayList<byte[]> _raw_records;
    public ArrayList<Record> records() { return records; }
    public RepeatUntilSized _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public ArrayList<byte[]> _raw_records() { return _raw_records; }
}
