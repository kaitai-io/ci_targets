// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class EosExceptionBytes extends KaitaiStruct {
    public static EosExceptionBytes fromFile(String fileName) throws IOException {
        return new EosExceptionBytes(new ByteBufferKaitaiStream(fileName));
    }

    public EosExceptionBytes(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EosExceptionBytes(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public EosExceptionBytes(KaitaiStream _io, KaitaiStruct _parent, EosExceptionBytes _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        KaitaiStream _io_envelope = this._io.substream(6);
        this.envelope = new Data(_io_envelope, this, _root);
    }

    public void _fetchInstances() {
        this.envelope._fetchInstances();
    }
    public static class Data extends KaitaiStruct {
        public static Data fromFile(String fileName) throws IOException {
            return new Data(new ByteBufferKaitaiStream(fileName));
        }

        public Data(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Data(KaitaiStream _io, EosExceptionBytes _parent) {
            this(_io, _parent, null);
        }

        public Data(KaitaiStream _io, EosExceptionBytes _parent, EosExceptionBytes _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.buf = this._io.readBytes(7);
        }

        public void _fetchInstances() {
        }
        private byte[] buf;
        private EosExceptionBytes _root;
        private EosExceptionBytes _parent;
        public byte[] buf() { return buf; }
        public EosExceptionBytes _root() { return _root; }
        public EosExceptionBytes _parent() { return _parent; }
    }
    private Data envelope;
    private EosExceptionBytes _root;
    private KaitaiStruct _parent;
    public Data envelope() { return envelope; }
    public EosExceptionBytes _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
