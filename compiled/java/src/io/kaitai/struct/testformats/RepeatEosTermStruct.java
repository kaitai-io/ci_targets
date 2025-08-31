// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class RepeatEosTermStruct extends KaitaiStruct {
    public static RepeatEosTermStruct fromFile(String fileName) throws IOException {
        return new RepeatEosTermStruct(new ByteBufferKaitaiStream(fileName));
    }

    public RepeatEosTermStruct(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatEosTermStruct(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public RepeatEosTermStruct(KaitaiStream _io, KaitaiStruct _parent, RepeatEosTermStruct _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this._raw_records = new ArrayList<byte[]>();
        this.records = new ArrayList<BytesWrapper>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this._raw_records.add(this._io.readBytesTerm((byte) 178, true, true, true));
                KaitaiStream _io__raw_records = new ByteBufferKaitaiStream(this._raw_records.get(this._raw_records.size() - 1));
                this.records.add(new BytesWrapper(_io__raw_records, this, _root));
                i++;
            }
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.records.size(); i++) {
            this.records.get(((Number) (i)).intValue())._fetchInstances();
        }
    }
    public static class BytesWrapper extends KaitaiStruct {
        public static BytesWrapper fromFile(String fileName) throws IOException {
            return new BytesWrapper(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            this.value = this._io.readBytesFull();
        }

        public void _fetchInstances() {
        }
        private byte[] value;
        private RepeatEosTermStruct _root;
        private RepeatEosTermStruct _parent;
        public byte[] value() { return value; }
        public RepeatEosTermStruct _root() { return _root; }
        public RepeatEosTermStruct _parent() { return _parent; }
    }
    private List<BytesWrapper> records;
    private RepeatEosTermStruct _root;
    private KaitaiStruct _parent;
    private List<byte[]> _raw_records;
    public List<BytesWrapper> records() { return records; }
    public RepeatEosTermStruct _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public List<byte[]> _raw_records() { return _raw_records; }
}
