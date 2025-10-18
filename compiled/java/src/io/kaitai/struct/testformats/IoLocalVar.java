// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class IoLocalVar extends KaitaiStruct {
    public static IoLocalVar fromFile(String fileName) throws IOException {
        return new IoLocalVar(new ByteBufferKaitaiStream(fileName));
    }

    public IoLocalVar(KaitaiStream _io) {
        this(_io, null, null);
    }

    public IoLocalVar(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public IoLocalVar(KaitaiStream _io, KaitaiStruct _parent, IoLocalVar _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
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
        if (this.messUp != null) {
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
    }
    public static class Dummy extends KaitaiStruct {
        public static Dummy fromFile(String fileName) throws IOException {
            return new Dummy(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
        }

        public void _fetchInstances() {
        }
        public IoLocalVar _root() { return _root; }
        public IoLocalVar _parent() { return _parent; }
        private IoLocalVar _root;
        private IoLocalVar _parent;
    }
    public Object messUp() {
        if (this.messUp != null)
            return this.messUp;
        KaitaiStream io = _root()._io();
        long _pos = io.pos();
        io.seek(8);
        switch (2) {
        case 1: {
            KaitaiStream _io_messUp = io.substream(2);
            this.messUp = new Dummy(_io_messUp, this, _root);
            break;
        }
        case 2: {
            KaitaiStream _io_messUp = io.substream(2);
            this.messUp = new Dummy(_io_messUp, this, _root);
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
    public byte[] skip() { return skip; }
    public Integer alwaysNull() { return alwaysNull; }
    public int followup() { return followup; }
    public IoLocalVar _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private Object messUp;
    private byte[] skip;
    private Integer alwaysNull;
    private int followup;
    private IoLocalVar _root;
    private KaitaiStruct _parent;
}
