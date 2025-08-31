// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class RepeatUntilTermStruct extends KaitaiStruct {
    public static RepeatUntilTermStruct fromFile(String fileName) throws IOException {
        return new RepeatUntilTermStruct(new ByteBufferKaitaiStream(fileName));
    }

    public RepeatUntilTermStruct(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatUntilTermStruct(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public RepeatUntilTermStruct(KaitaiStream _io, KaitaiStruct _parent, RepeatUntilTermStruct _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this._raw_records1 = new ArrayList<byte[]>();
        this.records1 = new ArrayList<BytesWrapper>();
        {
            BytesWrapper _it;
            int i = 0;
            do {
                byte[] _buf = this._io.readBytesTerm((byte) 170, false, true, true);
                this._raw_records1.add(_buf);
                KaitaiStream _io__raw_records1 = new ByteBufferKaitaiStream(_buf);
                _it = new BytesWrapper(_io__raw_records1, this, _root);
                this.records1.add(_it);
                i++;
            } while (!(_it.value().length == 0));
        }
        this._raw_records2 = new ArrayList<byte[]>();
        this.records2 = new ArrayList<BytesWrapper>();
        {
            BytesWrapper _it;
            int i = 0;
            do {
                byte[] _buf = this._io.readBytesTerm((byte) 170, true, true, true);
                this._raw_records2.add(_buf);
                KaitaiStream _io__raw_records2 = new ByteBufferKaitaiStream(_buf);
                _it = new BytesWrapper(_io__raw_records2, this, _root);
                this.records2.add(_it);
                i++;
            } while (!(!Arrays.equals(_it.value(), new byte[] { -86 })));
        }
        this._raw_records3 = new ArrayList<byte[]>();
        this.records3 = new ArrayList<BytesWrapper>();
        {
            BytesWrapper _it;
            int i = 0;
            do {
                byte[] _buf = this._io.readBytesTerm((byte) 85, false, false, true);
                this._raw_records3.add(_buf);
                KaitaiStream _io__raw_records3 = new ByteBufferKaitaiStream(_buf);
                _it = new BytesWrapper(_io__raw_records3, this, _root);
                this.records3.add(_it);
                i++;
            } while (!(Arrays.equals(_it.value(), records1().get(records1().size() - 1).value())));
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
    public static class BytesWrapper extends KaitaiStruct {
        public static BytesWrapper fromFile(String fileName) throws IOException {
            return new BytesWrapper(new ByteBufferKaitaiStream(fileName));
        }

        public BytesWrapper(KaitaiStream _io) {
            this(_io, null, null);
        }

        public BytesWrapper(KaitaiStream _io, RepeatUntilTermStruct _parent) {
            this(_io, _parent, null);
        }

        public BytesWrapper(KaitaiStream _io, RepeatUntilTermStruct _parent, RepeatUntilTermStruct _root) {
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
        private RepeatUntilTermStruct _root;
        private RepeatUntilTermStruct _parent;
        public byte[] value() { return value; }
        public RepeatUntilTermStruct _root() { return _root; }
        public RepeatUntilTermStruct _parent() { return _parent; }
    }
    private List<BytesWrapper> records1;
    private List<BytesWrapper> records2;
    private List<BytesWrapper> records3;
    private RepeatUntilTermStruct _root;
    private KaitaiStruct _parent;
    private List<byte[]> _raw_records1;
    private List<byte[]> _raw_records2;
    private List<byte[]> _raw_records3;
    public List<BytesWrapper> records1() { return records1; }
    public List<BytesWrapper> records2() { return records2; }
    public List<BytesWrapper> records3() { return records3; }
    public RepeatUntilTermStruct _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public List<byte[]> _raw_records1() { return _raw_records1; }
    public List<byte[]> _raw_records2() { return _raw_records2; }
    public List<byte[]> _raw_records3() { return _raw_records3; }
}
