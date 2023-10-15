// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;

public class SwitchRepeatExpr extends KaitaiStruct {
    public static SwitchRepeatExpr fromFile(String fileName) throws IOException {
        return new SwitchRepeatExpr(new ByteBufferKaitaiStream(fileName));
    }

    public SwitchRepeatExpr(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchRepeatExpr(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public SwitchRepeatExpr(KaitaiStream _io, KaitaiStruct _parent, SwitchRepeatExpr _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.code = this._io.readU1();
        this.size = this._io.readU4le();
        this.body = new ArrayList<Object>();
        for (int i = 0; i < 1; i++) {
            switch (code()) {
            case 17: {
                KaitaiStream _io_body = this._io.substream(size());
                this.body.add(new One(_io_body, this, _root));
                break;
            }
            case 34: {
                KaitaiStream _io_body = this._io.substream(size());
                this.body.add(new Two(_io_body, this, _root));
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

        public One(KaitaiStream _io, SwitchRepeatExpr _parent) {
            this(_io, _parent, null);
        }

        public One(KaitaiStream _io, SwitchRepeatExpr _parent, SwitchRepeatExpr _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.first = this._io.readBytesFull();
        }
        private byte[] first;
        private SwitchRepeatExpr _root;
        private SwitchRepeatExpr _parent;
        public byte[] first() { return first; }
        public SwitchRepeatExpr _root() { return _root; }
        public SwitchRepeatExpr _parent() { return _parent; }
    }
    public static class Two extends KaitaiStruct {
        public static Two fromFile(String fileName) throws IOException {
            return new Two(new ByteBufferKaitaiStream(fileName));
        }

        public Two(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Two(KaitaiStream _io, SwitchRepeatExpr _parent) {
            this(_io, _parent, null);
        }

        public Two(KaitaiStream _io, SwitchRepeatExpr _parent, SwitchRepeatExpr _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.second = this._io.readBytesFull();
        }
        private byte[] second;
        private SwitchRepeatExpr _root;
        private SwitchRepeatExpr _parent;
        public byte[] second() { return second; }
        public SwitchRepeatExpr _root() { return _root; }
        public SwitchRepeatExpr _parent() { return _parent; }
    }
    private int code;
    private long size;
    private ArrayList<Object> body;
    private SwitchRepeatExpr _root;
    private KaitaiStruct _parent;
    public int code() { return code; }
    public long size() { return size; }
    public ArrayList<Object> body() { return body; }
    public SwitchRepeatExpr _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
