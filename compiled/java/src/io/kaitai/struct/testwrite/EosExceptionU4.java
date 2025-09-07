// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class EosExceptionU4 extends KaitaiStruct.ReadWrite {
    public static EosExceptionU4 fromFile(String fileName) throws IOException {
        return new EosExceptionU4(new ByteBufferKaitaiStream(fileName));
    }
    public EosExceptionU4() {
        this(null, null, null);
    }

    public EosExceptionU4(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EosExceptionU4(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public EosExceptionU4(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EosExceptionU4 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw_envelope = this._io.readBytes(6);
        KaitaiStream _io__raw_envelope = new ByteBufferKaitaiStream(this._raw_envelope);
        this.envelope = new Data(_io__raw_envelope, this, _root);
        this.envelope._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.envelope._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        final KaitaiStream _io__raw_envelope = new ByteBufferKaitaiStream(6);
        this._io.addChildStream(_io__raw_envelope);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (6));
            final EosExceptionU4 _this = this;
            _io__raw_envelope.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_envelope = _io__raw_envelope.toByteArray();
                    if (_this._raw_envelope.length != 6)
                        throw new ConsistencyError("raw(envelope)", 6, _this._raw_envelope.length);
                    parent.writeBytes(_this._raw_envelope);
                }
            });
        }
        this.envelope._write_Seq(_io__raw_envelope);
    }

    public void _check() {
        if (!Objects.equals(this.envelope._root(), _root()))
            throw new ConsistencyError("envelope", _root(), this.envelope._root());
        if (!Objects.equals(this.envelope._parent(), this))
            throw new ConsistencyError("envelope", this, this.envelope._parent());
        _dirty = false;
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

        public Data(KaitaiStream _io, EosExceptionU4 _parent) {
            this(_io, _parent, null);
        }

        public Data(KaitaiStream _io, EosExceptionU4 _parent, EosExceptionU4 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.prebuf = this._io.readBytes(3);
            this.failInt = this._io.readU4le();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytes(this.prebuf);
            this._io.writeU4le(this.failInt);
        }

        public void _check() {
            if (this.prebuf.length != 3)
                throw new ConsistencyError("prebuf", 3, this.prebuf.length);
            _dirty = false;
        }
        private byte[] prebuf;
        private long failInt;
        private EosExceptionU4 _root;
        private EosExceptionU4 _parent;
        public byte[] prebuf() { return prebuf; }
        public void setPrebuf(byte[] _v) { _dirty = true; prebuf = _v; }
        public long failInt() { return failInt; }
        public void setFailInt(long _v) { _dirty = true; failInt = _v; }
        public EosExceptionU4 _root() { return _root; }
        public void set_root(EosExceptionU4 _v) { _dirty = true; _root = _v; }
        public EosExceptionU4 _parent() { return _parent; }
        public void set_parent(EosExceptionU4 _v) { _dirty = true; _parent = _v; }
    }
    private Data envelope;
    private EosExceptionU4 _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_envelope;
    public Data envelope() { return envelope; }
    public void setEnvelope(Data _v) { _dirty = true; envelope = _v; }
    public EosExceptionU4 _root() { return _root; }
    public void set_root(EosExceptionU4 _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public byte[] _raw_envelope() { return _raw_envelope; }
    public void set_raw_Envelope(byte[] _v) { _dirty = true; _raw_envelope = _v; }
}
