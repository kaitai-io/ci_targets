// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class TermStruct2 extends KaitaiStruct {
    public static TermStruct2 fromFile(String fileName) throws IOException {
        return new TermStruct2(new ByteBufferKaitaiStream(fileName));
    }

    public TermStruct2(KaitaiStream _io) {
        this(_io, null, null);
    }

    public TermStruct2(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public TermStruct2(KaitaiStream _io, KaitaiStruct _parent, TermStruct2 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this._raw_s1 = this._io.readBytesTerm((byte) 124, false, true, true);
        KaitaiStream _io__raw_s1 = new ByteBufferKaitaiStream(this._raw_s1);
        this.s1 = new BytesWrapper(_io__raw_s1, this, _root);
        this._raw_s2 = this._io.readBytesTerm((byte) 124, true, true, true);
        KaitaiStream _io__raw_s2 = new ByteBufferKaitaiStream(this._raw_s2);
        this.s2 = new BytesWrapper(_io__raw_s2, this, _root);
        this._raw_s3 = this._io.readBytesTerm((byte) 64, false, false, true);
        KaitaiStream _io__raw_s3 = new ByteBufferKaitaiStream(this._raw_s3);
        this.s3 = new BytesWrapper(_io__raw_s3, this, _root);
    }

    public void _fetchInstances() {
        this.s1._fetchInstances();
        this.s2._fetchInstances();
        this.s3._fetchInstances();
    }
    public static class BytesWrapper extends KaitaiStruct {
        public static BytesWrapper fromFile(String fileName) throws IOException {
            return new BytesWrapper(new ByteBufferKaitaiStream(fileName));
        }

        public BytesWrapper(KaitaiStream _io) {
            this(_io, null, null);
        }

        public BytesWrapper(KaitaiStream _io, TermStruct2 _parent) {
            this(_io, _parent, null);
        }

        public BytesWrapper(KaitaiStream _io, TermStruct2 _parent, TermStruct2 _root) {
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
        private TermStruct2 _root;
        private TermStruct2 _parent;
        public byte[] value() { return value; }
        public TermStruct2 _root() { return _root; }
        public TermStruct2 _parent() { return _parent; }
    }
    private BytesWrapper s1;
    private BytesWrapper s2;
    private BytesWrapper s3;
    private TermStruct2 _root;
    private KaitaiStruct _parent;
    private byte[] _raw_s1;
    private byte[] _raw_s2;
    private byte[] _raw_s3;
    public BytesWrapper s1() { return s1; }
    public BytesWrapper s2() { return s2; }
    public BytesWrapper s3() { return s3; }
    public TermStruct2 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public byte[] _raw_s1() { return _raw_s1; }
    public byte[] _raw_s2() { return _raw_s2; }
    public byte[] _raw_s3() { return _raw_s3; }
}
