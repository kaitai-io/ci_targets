// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class IoLocalVar extends KaitaiStruct.ReadWrite {
    public static IoLocalVar fromFile(String fileName) throws IOException {
        return new IoLocalVar(new ByteBufferKaitaiStream(fileName));
    }
    public IoLocalVar() {
        this(null, null, null);
    }

    public IoLocalVar(KaitaiStream _io) {
        this(_io, null, null);
    }

    public IoLocalVar(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public IoLocalVar(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, IoLocalVar _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.skip = this._io.readBytes(20);
        if (((IoLocalVar.Dummy) (messUp()))._io().pos() < 0) {
            this.alwaysNull = this._io.readU1();
        }
        this.followup = this._io.readU1();
    }

    public void _fetchInstances() {
        if (((IoLocalVar.Dummy) (messUp()))._io().pos() < 0) {
        }
        messUp();
        switch (2) {
        case 1: {
            ((Dummy) (this.messUp))._fetchInstances();
            break;
        }
        case 2: {
            ((Dummy) (this.messUp))._fetchInstances();
            break;
        }
        default: {
            break;
        }
        }
    }

    public void _write_Seq() {
        _writeMessUp = _toWriteMessUp;
        this._io.writeBytes(this.skip);
        if (((IoLocalVar.Dummy) (messUp()))._io().pos() < 0) {
            this._io.writeU1(this.alwaysNull);
        }
        this._io.writeU1(this.followup);
    }

    public void _check() {
        if (this.skip.length != 20)
            throw new ConsistencyError("skip", this.skip.length, 20);
    }
    public static class Dummy extends KaitaiStruct.ReadWrite {
        public static Dummy fromFile(String fileName) throws IOException {
            return new Dummy(new ByteBufferKaitaiStream(fileName));
        }
        public Dummy() {
            this(null, null, null);
        }

        public Dummy(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Dummy(KaitaiStream _io, IoLocalVar _parent) {
            this(_io, _parent, null);
        }

        public Dummy(KaitaiStream _io, IoLocalVar _parent, IoLocalVar _root) {
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
        private IoLocalVar _root;
        private IoLocalVar _parent;
        public IoLocalVar _root() { return _root; }
        public void set_root(IoLocalVar _v) { _root = _v; }
        public IoLocalVar _parent() { return _parent; }
        public void set_parent(IoLocalVar _v) { _parent = _v; }
    }
    private Object messUp;
    private boolean _writeMessUp = false;
    private boolean _toWriteMessUp = true;
    public Object messUp() {
        if (_writeMessUp)
            _writeMessUp();
        if (this.messUp != null)
            return this.messUp;
        KaitaiStream io = _root()._io();
        long _pos = io.pos();
        io.seek(8);
        switch (2) {
        case 1: {
            this._raw_messUp = io.readBytes(2);
            KaitaiStream _io__raw_messUp = new ByteBufferKaitaiStream(this._raw_messUp);
            this.messUp = new Dummy(_io__raw_messUp, this, _root);
            ((Dummy) (this.messUp))._read();
            break;
        }
        case 2: {
            this._raw_messUp = io.readBytes(2);
            KaitaiStream _io__raw_messUp = new ByteBufferKaitaiStream(this._raw_messUp);
            this.messUp = new Dummy(_io__raw_messUp, this, _root);
            ((Dummy) (this.messUp))._read();
            break;
        }
        default: {
            this.messUp = io.readBytes(2);
            break;
        }
        }
        io.seek(_pos);
        return this.messUp;
    }
    public void setMessUp(Object _v) { messUp = _v; }
    public void setMessUp_ToWrite(boolean _v) { _toWriteMessUp = _v; }

    public void _writeMessUp() {
        _writeMessUp = false;
        KaitaiStream io = _root()._io();
        long _pos = io.pos();
        io.seek(8);
        switch (2) {
        case 1: {
            final KaitaiStream _io__raw_messUp = new ByteBufferKaitaiStream(2);
            io.addChildStream(_io__raw_messUp);
            {
                long _pos2 = io.pos();
                io.seek(io.pos() + (2));
                final IoLocalVar _this = this;
                _io__raw_messUp.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                    @Override
                    protected void write(KaitaiStream parent) {
                        _this._raw_messUp = _io__raw_messUp.toByteArray();
                        if (((byte[]) (_this._raw_messUp)).length != 2)
                            throw new ConsistencyError("raw(mess_up)", ((byte[]) (_this._raw_messUp)).length, 2);
                        parent.writeBytes(((byte[]) (((byte[]) (_this._raw_messUp)))));
                    }
                });
            }
            ((Dummy) (this.messUp))._write_Seq(_io__raw_messUp);
            break;
        }
        case 2: {
            final KaitaiStream _io__raw_messUp = new ByteBufferKaitaiStream(2);
            io.addChildStream(_io__raw_messUp);
            {
                long _pos2 = io.pos();
                io.seek(io.pos() + (2));
                final IoLocalVar _this = this;
                _io__raw_messUp.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                    @Override
                    protected void write(KaitaiStream parent) {
                        _this._raw_messUp = _io__raw_messUp.toByteArray();
                        if (((byte[]) (_this._raw_messUp)).length != 2)
                            throw new ConsistencyError("raw(mess_up)", ((byte[]) (_this._raw_messUp)).length, 2);
                        parent.writeBytes(((byte[]) (((byte[]) (_this._raw_messUp)))));
                    }
                });
            }
            ((Dummy) (this.messUp))._write_Seq(_io__raw_messUp);
            break;
        }
        default: {
            io.writeBytes(((byte[]) (((byte[]) (this.messUp)))));
            break;
        }
        }
        io.seek(_pos);
    }

    public void _checkMessUp() {
        switch (2) {
        case 1: {
            if (!Objects.equals(((IoLocalVar.Dummy) (this.messUp))._root(), _root()))
                throw new ConsistencyError("mess_up", ((IoLocalVar.Dummy) (this.messUp))._root(), _root());
            if (!Objects.equals(((IoLocalVar.Dummy) (this.messUp))._parent(), this))
                throw new ConsistencyError("mess_up", ((IoLocalVar.Dummy) (this.messUp))._parent(), this);
            break;
        }
        case 2: {
            if (!Objects.equals(((IoLocalVar.Dummy) (this.messUp))._root(), _root()))
                throw new ConsistencyError("mess_up", ((IoLocalVar.Dummy) (this.messUp))._root(), _root());
            if (!Objects.equals(((IoLocalVar.Dummy) (this.messUp))._parent(), this))
                throw new ConsistencyError("mess_up", ((IoLocalVar.Dummy) (this.messUp))._parent(), this);
            break;
        }
        default: {
            if (((byte[]) (this.messUp)).length != 2)
                throw new ConsistencyError("mess_up", ((byte[]) (this.messUp)).length, 2);
            break;
        }
        }
    }
    private byte[] skip;
    private Integer alwaysNull;
    private int followup;
    private IoLocalVar _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_messUp;
    public byte[] skip() { return skip; }
    public void setSkip(byte[] _v) { skip = _v; }
    public Integer alwaysNull() { return alwaysNull; }
    public void setAlwaysNull(Integer _v) { alwaysNull = _v; }
    public int followup() { return followup; }
    public void setFollowup(int _v) { followup = _v; }
    public IoLocalVar _root() { return _root; }
    public void set_root(IoLocalVar _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
    public byte[] _raw_messUp() { return _raw_messUp; }
    public void set_raw_MessUp(byte[] _v) { _raw_messUp = _v; }
}
