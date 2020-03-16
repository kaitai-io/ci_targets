// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ParamsPassUsertype extends KaitaiStruct {
    public static ParamsPassUsertype fromFile(String fileName) throws IOException {
        return new ParamsPassUsertype(new ByteBufferKaitaiStream(fileName));
    }

    public ParamsPassUsertype(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ParamsPassUsertype(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ParamsPassUsertype(KaitaiStream _io, KaitaiStruct _parent, ParamsPassUsertype _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.first = new Block(this._io, this, _root);
        this.one = new ParamType(this._io, this, _root, first());
    }
    public static class Block extends KaitaiStruct {
        public static Block fromFile(String fileName) throws IOException {
            return new Block(new ByteBufferKaitaiStream(fileName));
        }

        public Block(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Block(KaitaiStream _io, ParamsPassUsertype _parent) {
            this(_io, _parent, null);
        }

        public Block(KaitaiStream _io, ParamsPassUsertype _parent, ParamsPassUsertype _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.foo = this._io.readU1();
        }
        private int foo;
        private ParamsPassUsertype _root;
        private ParamsPassUsertype _parent;
        public int foo() { return foo; }
        public ParamsPassUsertype _root() { return _root; }
        public ParamsPassUsertype _parent() { return _parent; }
    }
    public static class ParamType extends KaitaiStruct {

        public ParamType(KaitaiStream _io, Block foo) {
            this(_io, null, null, foo);
        }

        public ParamType(KaitaiStream _io, ParamsPassUsertype _parent, Block foo) {
            this(_io, _parent, null, foo);
        }

        public ParamType(KaitaiStream _io, ParamsPassUsertype _parent, ParamsPassUsertype _root, Block foo) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.foo = foo;
            _read();
        }
        private void _read() {
            this.buf = this._io.readBytes(foo().foo());
        }
        private byte[] buf;
        private Block foo;
        private ParamsPassUsertype _root;
        private ParamsPassUsertype _parent;
        public byte[] buf() { return buf; }
        public Block foo() { return foo; }
        public ParamsPassUsertype _root() { return _root; }
        public ParamsPassUsertype _parent() { return _parent; }
    }
    private Block first;
    private ParamType one;
    private ParamsPassUsertype _root;
    private KaitaiStruct _parent;
    public Block first() { return first; }
    public ParamType one() { return one; }
    public ParamsPassUsertype _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
