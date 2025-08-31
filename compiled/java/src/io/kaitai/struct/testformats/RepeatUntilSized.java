// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class RepeatUntilSized extends KaitaiStruct {
    public static RepeatUntilSized fromFile(String fileName) throws IOException {
        return new RepeatUntilSized(new ByteBufferKaitaiStream(fileName));
    }

    public RepeatUntilSized(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatUntilSized(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public RepeatUntilSized(KaitaiStream _io, KaitaiStruct _parent, RepeatUntilSized _root) {
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

        public Record(KaitaiStream _io, RepeatUntilSized _parent) {
            this(_io, _parent, null);
        }

        public Record(KaitaiStream _io, RepeatUntilSized _parent, RepeatUntilSized _root) {
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
        private int marker;
        private long body;
        private RepeatUntilSized _root;
        private RepeatUntilSized _parent;
        public int marker() { return marker; }
        public long body() { return body; }
        public RepeatUntilSized _root() { return _root; }
        public RepeatUntilSized _parent() { return _parent; }
    }
    private List<Record> records;
    private RepeatUntilSized _root;
    private KaitaiStruct _parent;
    public List<Record> records() { return records; }
    public RepeatUntilSized _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
