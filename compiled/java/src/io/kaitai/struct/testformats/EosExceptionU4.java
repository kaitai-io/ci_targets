// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class EosExceptionU4 extends KaitaiStruct {
    public static EosExceptionU4 fromFile(String fileName) throws IOException {
        return new EosExceptionU4(new ByteBufferKaitaiStream(fileName));
    }

    public EosExceptionU4(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EosExceptionU4(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public EosExceptionU4(KaitaiStream _io, KaitaiStruct _parent, EosExceptionU4 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        KaitaiStream _io_envelope = this._io.substream(6)
        this.envelope = new Data(_io_envelope, this, _root);
    }
    public static class Data extends KaitaiStruct {
        public static Data fromFile(String fileName) throws IOException {
            return new Data(new ByteBufferKaitaiStream(fileName));
        }

        public Data(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Data(KaitaiStream _io, EosExceptionU4 _parent) {
            this(_io, _parent, null);
        }

        public Data(KaitaiStream _io, EosExceptionU4 _parent, EosExceptionU4 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.prebuf = this._io.readBytes(3);
            this.failInt = this._io.readU4le();
        }
        private byte[] prebuf;
        private long failInt;
        private EosExceptionU4 _root;
        private EosExceptionU4 _parent;
        public byte[] prebuf() { return prebuf; }
        public long failInt() { return failInt; }
        public EosExceptionU4 _root() { return _root; }
        public EosExceptionU4 _parent() { return _parent; }
    }
    private Data envelope;
    private EosExceptionU4 _root;
    private KaitaiStruct _parent;
    private byte[] _raw_envelope;
    public Data envelope() { return envelope; }
    public EosExceptionU4 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public byte[] _raw_envelope() { return _raw_envelope; }
}
