// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class NavParentSwitchCast extends KaitaiStruct {
    public static NavParentSwitchCast fromFile(String fileName) throws IOException {
        return new NavParentSwitchCast(new ByteBufferKaitaiStream(fileName));
    }

    public NavParentSwitchCast(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NavParentSwitchCast(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public NavParentSwitchCast(KaitaiStream _io, KaitaiStruct _parent, NavParentSwitchCast _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.main = new Foo(this._io, this, _root);
    }
    public static class Foo extends KaitaiStruct {
        public static Foo fromFile(String fileName) throws IOException {
            return new Foo(new ByteBufferKaitaiStream(fileName));
        }

        public Foo(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Foo(KaitaiStream _io, NavParentSwitchCast _parent) {
            this(_io, _parent, null);
        }

        public Foo(KaitaiStream _io, NavParentSwitchCast _parent, NavParentSwitchCast _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.bufType = this._io.readU1();
            this.flag = this._io.readU1();
            switch (bufType()) {
            case 0: {
                KaitaiStream _io_buf = this._io.substream(4)
                this.buf = new Zero(_io_buf, this, _root);
                break;
            }
            case 1: {
                KaitaiStream _io_buf = this._io.substream(4)
                this.buf = new One(_io_buf, this, _root);
                break;
            }
            default: {
                this.buf = this._io.readBytes(4);
                break;
            }
            }
        }
        public static class Zero extends KaitaiStruct {
            public static Zero fromFile(String fileName) throws IOException {
                return new Zero(new ByteBufferKaitaiStream(fileName));
            }

            public Zero(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Zero(KaitaiStream _io, NavParentSwitchCast.Foo _parent) {
                this(_io, _parent, null);
            }

            public Zero(KaitaiStream _io, NavParentSwitchCast.Foo _parent, NavParentSwitchCast _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.branch = new Common(this._io, this, _root);
            }
            private Common branch;
            private NavParentSwitchCast _root;
            private NavParentSwitchCast.Foo _parent;
            public Common branch() { return branch; }
            public NavParentSwitchCast _root() { return _root; }
            public NavParentSwitchCast.Foo _parent() { return _parent; }
        }
        public static class One extends KaitaiStruct {
            public static One fromFile(String fileName) throws IOException {
                return new One(new ByteBufferKaitaiStream(fileName));
            }

            public One(KaitaiStream _io) {
                this(_io, null, null);
            }

            public One(KaitaiStream _io, NavParentSwitchCast.Foo _parent) {
                this(_io, _parent, null);
            }

            public One(KaitaiStream _io, NavParentSwitchCast.Foo _parent, NavParentSwitchCast _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.branch = new Common(this._io, this, _root);
            }
            private Common branch;
            private NavParentSwitchCast _root;
            private NavParentSwitchCast.Foo _parent;
            public Common branch() { return branch; }
            public NavParentSwitchCast _root() { return _root; }
            public NavParentSwitchCast.Foo _parent() { return _parent; }
        }
        public static class Common extends KaitaiStruct {
            public static Common fromFile(String fileName) throws IOException {
                return new Common(new ByteBufferKaitaiStream(fileName));
            }

            public Common(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Common(KaitaiStream _io, KaitaiStruct _parent) {
                this(_io, _parent, null);
            }

            public Common(KaitaiStream _io, KaitaiStruct _parent, NavParentSwitchCast _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
            }
            private Integer flag;
            public Integer flag() {
                if (this.flag != null)
                    return this.flag;
                int _tmp = (int) (((NavParentSwitchCast.Foo) (_parent()._parent())).flag());
                this.flag = _tmp;
                return this.flag;
            }
            private NavParentSwitchCast _root;
            private KaitaiStruct _parent;
            public NavParentSwitchCast _root() { return _root; }
            public KaitaiStruct _parent() { return _parent; }
        }
        private int bufType;
        private int flag;
        private Object buf;
        private NavParentSwitchCast _root;
        private NavParentSwitchCast _parent;
        private byte[] _raw_buf;
        public int bufType() { return bufType; }
        public int flag() { return flag; }
        public Object buf() { return buf; }
        public NavParentSwitchCast _root() { return _root; }
        public NavParentSwitchCast _parent() { return _parent; }
        public byte[] _raw_buf() { return _raw_buf; }
    }
    private Foo main;
    private NavParentSwitchCast _root;
    private KaitaiStruct _parent;
    public Foo main() { return main; }
    public NavParentSwitchCast _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
