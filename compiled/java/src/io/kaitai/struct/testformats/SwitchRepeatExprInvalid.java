// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;

public class SwitchRepeatExprInvalid extends KaitaiStruct {
    public static SwitchRepeatExprInvalid fromFile(String fileName) throws IOException {
        return new SwitchRepeatExprInvalid(new ByteBufferKaitaiStream(fileName));
    }

    public SwitchRepeatExprInvalid(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchRepeatExprInvalid(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public SwitchRepeatExprInvalid(KaitaiStream _io, KaitaiStruct _parent, SwitchRepeatExprInvalid _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.code = this._io.readU1();
        this.size = this._io.readU4le();
        this._raw_body = new ArrayList<byte[]>(((Number) (1)).intValue());
        body = new ArrayList<Object>(((Number) (1)).intValue());
        for (int i = 0; i < 1; i++) {
            switch (code()) {
            case 255: {
                this._raw_body.add(this._io.readBytes(size()));
                KaitaiStream _io__raw_body = new ByteBufferKaitaiStream(_raw_body.get(_raw_body.size() - 1));
                this.body.add(new One(_io__raw_body, this, _root));
                break;
            }
            case 34: {
                this._raw_body.add(this._io.readBytes(size()));
                KaitaiStream _io__raw_body = new ByteBufferKaitaiStream(_raw_body.get(_raw_body.size() - 1));
                this.body.add(new Two(_io__raw_body, this, _root));
                break;
            }
            default: {
                this.body.add(this._io.readBytes(size()));
                break;
            }
            }
        }
    }
    public static class One extends KaitaiStruct {
        public static One fromFile(String fileName) throws IOException {
            return new One(new ByteBufferKaitaiStream(fileName));
        }

        public One(KaitaiStream _io) {
            this(_io, null, null);
        }

        public One(KaitaiStream _io, SwitchRepeatExprInvalid _parent) {
            this(_io, _parent, null);
        }

        public One(KaitaiStream _io, SwitchRepeatExprInvalid _parent, SwitchRepeatExprInvalid _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.first = this._io.readBytesFull();
        }
        private byte[] first;
        private SwitchRepeatExprInvalid _root;
        private SwitchRepeatExprInvalid _parent;
        public byte[] first() { return first; }
        public SwitchRepeatExprInvalid _root() { return _root; }
        public SwitchRepeatExprInvalid _parent() { return _parent; }
    }
    public static class Two extends KaitaiStruct {
        public static Two fromFile(String fileName) throws IOException {
            return new Two(new ByteBufferKaitaiStream(fileName));
        }

        public Two(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Two(KaitaiStream _io, SwitchRepeatExprInvalid _parent) {
            this(_io, _parent, null);
        }

        public Two(KaitaiStream _io, SwitchRepeatExprInvalid _parent, SwitchRepeatExprInvalid _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.second = this._io.readBytesFull();
        }
        private byte[] second;
        private SwitchRepeatExprInvalid _root;
        private SwitchRepeatExprInvalid _parent;
        public byte[] second() { return second; }
        public SwitchRepeatExprInvalid _root() { return _root; }
        public SwitchRepeatExprInvalid _parent() { return _parent; }
    }
    private int code;
    private long size;
    private ArrayList<Object> body;
    private SwitchRepeatExprInvalid _root;
    private KaitaiStruct _parent;
    private ArrayList<byte[]> _raw_body;
    public int code() { return code; }
    public long size() { return size; }
    public ArrayList<Object> body() { return body; }
    public SwitchRepeatExprInvalid _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public ArrayList<byte[]> _raw_body() { return _raw_body; }
}
