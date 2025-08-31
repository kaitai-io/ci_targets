// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class EosExceptionBytes extends KaitaiStruct.ReadWrite {
    public static EosExceptionBytes fromFile(String fileName) throws IOException {
        return new EosExceptionBytes(new ByteBufferKaitaiStream(fileName));
    }
    public EosExceptionBytes() {
        this(null, null, null);
    }

    public EosExceptionBytes(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EosExceptionBytes(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public EosExceptionBytes(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EosExceptionBytes _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw_envelope = this._io.readBytes(6);
        KaitaiStream _io__raw_envelope = new ByteBufferKaitaiStream(this._raw_envelope);
        this.envelope = new Data(_io__raw_envelope, this, _root);
        this.envelope._read();
    }

    public void _fetchInstances() {
        this.envelope._fetchInstances();
    }

    public void _write_Seq() {
        final KaitaiStream _io__raw_envelope = new ByteBufferKaitaiStream(6);
        this._io.addChildStream(_io__raw_envelope);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (6));
            final EosExceptionBytes _this = this;
            _io__raw_envelope.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_envelope = _io__raw_envelope.toByteArray();
                    if (_this._raw_envelope.length != 6)
                        throw new ConsistencyError("raw(envelope)", _this._raw_envelope.length, 6);
                    parent.writeBytes(_this._raw_envelope);
                }
            });
        }
        this.envelope._write_Seq(_io__raw_envelope);
    }

    public void _check() {
        if (!Objects.equals(this.envelope._root(), _root()))
            throw new ConsistencyError("envelope", this.envelope._root(), _root());
        if (!Objects.equals(this.envelope._parent(), this))
            throw new ConsistencyError("envelope", this.envelope._parent(), this);
    }
    public static class Data extends KaitaiStruct.ReadWrite {
        public static Data fromFile(String fileName) throws IOException {
            return new Data(new ByteBufferKaitaiStream(fileName));
        }
        public Data() {
            this(null, null, null);
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
        }
        public void _read() {
            this.buf = this._io.readBytes(7);
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeBytes(this.buf);
        }

        public void _check() {
            if (this.buf.length != 7)
                throw new ConsistencyError("buf", this.buf.length, 7);
        }
        private byte[] buf;
        private EosExceptionBytes _root;
        private EosExceptionBytes _parent;
        public byte[] buf() { return buf; }
        public void setBuf(byte[] _v) { buf = _v; }
        public EosExceptionBytes _root() { return _root; }
        public void set_root(EosExceptionBytes _v) { _root = _v; }
        public EosExceptionBytes _parent() { return _parent; }
        public void set_parent(EosExceptionBytes _v) { _parent = _v; }
    }
    private Data envelope;
    private EosExceptionBytes _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_envelope;
    public Data envelope() { return envelope; }
    public void setEnvelope(Data _v) { envelope = _v; }
    public EosExceptionBytes _root() { return _root; }
    public void set_root(EosExceptionBytes _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
    public byte[] _raw_envelope() { return _raw_envelope; }
    public void set_raw_Envelope(byte[] _v) { _raw_envelope = _v; }
}
