// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class EosExceptionSized extends KaitaiStruct.ReadWrite {
    public static EosExceptionSized fromFile(String fileName) throws IOException {
        return new EosExceptionSized(new ByteBufferKaitaiStream(fileName));
    }
    public EosExceptionSized() {
        this(null, null, null);
    }

    public EosExceptionSized(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EosExceptionSized(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public EosExceptionSized(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EosExceptionSized _root) {
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
            final EosExceptionSized _this = this;
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

        public Data(KaitaiStream _io, EosExceptionSized _parent) {
            this(_io, _parent, null);
        }

        public Data(KaitaiStream _io, EosExceptionSized _parent, EosExceptionSized _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this._raw_buf = this._io.readBytes(7);
            KaitaiStream _io__raw_buf = new ByteBufferKaitaiStream(this._raw_buf);
            this.buf = new Foo(_io__raw_buf, this, _root);
            this.buf._read();
        }

        public void _fetchInstances() {
            this.buf._fetchInstances();
        }

        public void _write_Seq() {
            final KaitaiStream _io__raw_buf = new ByteBufferKaitaiStream(7);
            this._io.addChildStream(_io__raw_buf);
            {
                long _pos2 = this._io.pos();
                this._io.seek(this._io.pos() + (7));
                final Data _this = this;
                _io__raw_buf.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                    @Override
                    protected void write(KaitaiStream parent) {
                        _this._raw_buf = _io__raw_buf.toByteArray();
                        if (_this._raw_buf.length != 7)
                            throw new ConsistencyError("raw(buf)", _this._raw_buf.length, 7);
                        parent.writeBytes(_this._raw_buf);
                    }
                });
            }
            this.buf._write_Seq(_io__raw_buf);
        }

        public void _check() {
            if (!Objects.equals(this.buf._root(), _root()))
                throw new ConsistencyError("buf", this.buf._root(), _root());
            if (!Objects.equals(this.buf._parent(), this))
                throw new ConsistencyError("buf", this.buf._parent(), this);
        }
        private Foo buf;
        private EosExceptionSized _root;
        private EosExceptionSized _parent;
        private byte[] _raw_buf;
        public Foo buf() { return buf; }
        public void setBuf(Foo _v) { buf = _v; }
        public EosExceptionSized _root() { return _root; }
        public void set_root(EosExceptionSized _v) { _root = _v; }
        public EosExceptionSized _parent() { return _parent; }
        public void set_parent(EosExceptionSized _v) { _parent = _v; }
        public byte[] _raw_buf() { return _raw_buf; }
        public void set_raw_Buf(byte[] _v) { _raw_buf = _v; }
    }
    public static class Foo extends KaitaiStruct.ReadWrite {
        public static Foo fromFile(String fileName) throws IOException {
            return new Foo(new ByteBufferKaitaiStream(fileName));
        }
        public Foo() {
            this(null, null, null);
        }

        public Foo(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Foo(KaitaiStream _io, EosExceptionSized.Data _parent) {
            this(_io, _parent, null);
        }

        public Foo(KaitaiStream _io, EosExceptionSized.Data _parent, EosExceptionSized _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
        }

        public void _check() {
        }
        private EosExceptionSized _root;
        private EosExceptionSized.Data _parent;
        public EosExceptionSized _root() { return _root; }
        public void set_root(EosExceptionSized _v) { _root = _v; }
        public EosExceptionSized.Data _parent() { return _parent; }
        public void set_parent(EosExceptionSized.Data _v) { _parent = _v; }
    }
    private Data envelope;
    private EosExceptionSized _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_envelope;
    public Data envelope() { return envelope; }
    public void setEnvelope(Data _v) { envelope = _v; }
    public EosExceptionSized _root() { return _root; }
    public void set_root(EosExceptionSized _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
    public byte[] _raw_envelope() { return _raw_envelope; }
    public void set_raw_Envelope(byte[] _v) { _raw_envelope = _v; }
}
