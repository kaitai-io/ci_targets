// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class EofExceptionSwitchUser extends KaitaiStruct {
    public static EofExceptionSwitchUser fromFile(String fileName) throws IOException {
        return new EofExceptionSwitchUser(new ByteBufferKaitaiStream(fileName));
    }

    public EofExceptionSwitchUser(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EofExceptionSwitchUser(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public EofExceptionSwitchUser(KaitaiStream _io, KaitaiStruct _parent, EofExceptionSwitchUser _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.code = this._io.readU2le();
        switch (code()) {
        case 2: {
            this.data = new Two(this._io, this, _root);
            break;
        }
        case 511: {
            this.data = new One(this._io, this, _root);
            break;
        }
        }
    }

    public void _fetchInstances() {
        switch (code()) {
        case 2: {
            ((Two) (this.data))._fetchInstances();
            break;
        }
        case 511: {
            ((One) (this.data))._fetchInstances();
            break;
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

        public One(KaitaiStream _io, EofExceptionSwitchUser _parent) {
            this(_io, _parent, null);
        }

        public One(KaitaiStream _io, EofExceptionSwitchUser _parent, EofExceptionSwitchUser _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.val = this._io.readS2le();
        }

        public void _fetchInstances() {
        }
        public short val() { return val; }
        public EofExceptionSwitchUser _root() { return _root; }
        public EofExceptionSwitchUser _parent() { return _parent; }
        private short val;
        private EofExceptionSwitchUser _root;
        private EofExceptionSwitchUser _parent;
    }
    public static class Two extends KaitaiStruct {
        public static Two fromFile(String fileName) throws IOException {
            return new Two(new ByteBufferKaitaiStream(fileName));
        }

        public Two(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Two(KaitaiStream _io, EofExceptionSwitchUser _parent) {
            this(_io, _parent, null);
        }

        public Two(KaitaiStream _io, EofExceptionSwitchUser _parent, EofExceptionSwitchUser _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.val = this._io.readU2le();
        }

        public void _fetchInstances() {
        }
        public int val() { return val; }
        public EofExceptionSwitchUser _root() { return _root; }
        public EofExceptionSwitchUser _parent() { return _parent; }
        private int val;
        private EofExceptionSwitchUser _root;
        private EofExceptionSwitchUser _parent;
    }
    public int code() { return code; }
    public KaitaiStruct data() { return data; }
    public EofExceptionSwitchUser _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private int code;
    private KaitaiStruct data;
    private EofExceptionSwitchUser _root;
    private KaitaiStruct _parent;
}
