// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class StructPadTermEqual extends KaitaiStruct {
    public static StructPadTermEqual fromFile(String fileName) throws IOException {
        return new StructPadTermEqual(new ByteBufferKaitaiStream(fileName));
    }

    public StructPadTermEqual(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StructPadTermEqual(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public StructPadTermEqual(KaitaiStream _io, KaitaiStruct _parent, StructPadTermEqual _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this._raw_s1 = KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, false);
        KaitaiStream _io__raw_s1 = new ByteBufferKaitaiStream(this._raw_s1);
        this.s1 = new BytesWrapper(_io__raw_s1, this, _root);
        this._raw_s2 = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 43), (byte) 64, true);
        KaitaiStream _io__raw_s2 = new ByteBufferKaitaiStream(this._raw_s2);
        this.s2 = new BytesWrapper(_io__raw_s2, this, _root);
        this._raw_s3 = KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 43, false);
        KaitaiStream _io__raw_s3 = new ByteBufferKaitaiStream(this._raw_s3);
        this.s3 = new BytesWrapper(_io__raw_s3, this, _root);
        this._raw_s4 = KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 46, true);
        KaitaiStream _io__raw_s4 = new ByteBufferKaitaiStream(this._raw_s4);
        this.s4 = new BytesWrapper(_io__raw_s4, this, _root);
    }

    public void _fetchInstances() {
        this.s1._fetchInstances();
        this.s2._fetchInstances();
        this.s3._fetchInstances();
        this.s4._fetchInstances();
    }
    public static class BytesWrapper extends KaitaiStruct {
        public static BytesWrapper fromFile(String fileName) throws IOException {
            return new BytesWrapper(new ByteBufferKaitaiStream(fileName));
        }

        public BytesWrapper(KaitaiStream _io) {
            this(_io, null, null);
        }

        public BytesWrapper(KaitaiStream _io, StructPadTermEqual _parent) {
            this(_io, _parent, null);
        }

        public BytesWrapper(KaitaiStream _io, StructPadTermEqual _parent, StructPadTermEqual _root) {
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
        public byte[] value() { return value; }
        public StructPadTermEqual _root() { return _root; }
        public StructPadTermEqual _parent() { return _parent; }
        private byte[] value;
        private StructPadTermEqual _root;
        private StructPadTermEqual _parent;
    }
    public BytesWrapper s1() { return s1; }
    public BytesWrapper s2() { return s2; }
    public BytesWrapper s3() { return s3; }
    public BytesWrapper s4() { return s4; }
    public StructPadTermEqual _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public byte[] _raw_s1() { return _raw_s1; }
    public byte[] _raw_s2() { return _raw_s2; }
    public byte[] _raw_s3() { return _raw_s3; }
    public byte[] _raw_s4() { return _raw_s4; }
    private BytesWrapper s1;
    private BytesWrapper s2;
    private BytesWrapper s3;
    private BytesWrapper s4;
    private StructPadTermEqual _root;
    private KaitaiStruct _parent;
    private byte[] _raw_s1;
    private byte[] _raw_s2;
    private byte[] _raw_s3;
    private byte[] _raw_s4;
}
