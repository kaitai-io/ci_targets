// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ParamsPassStruct extends KaitaiStruct {
    public static ParamsPassStruct fromFile(String fileName) throws IOException {
        return new ParamsPassStruct(new ByteBufferKaitaiStream(fileName));
    }

    public ParamsPassStruct(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ParamsPassStruct(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ParamsPassStruct(KaitaiStream _io, KaitaiStruct _parent, ParamsPassStruct _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.first = new Block(this._io, this, _root);
        this.one = new StructType(this._io, this, _root, first());
    }
    public static class Block extends KaitaiStruct {
        public static Block fromFile(String fileName) throws IOException {
            return new Block(new ByteBufferKaitaiStream(fileName));
        }

        public Block(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Block(KaitaiStream _io, ParamsPassStruct _parent) {
            this(_io, _parent, null);
        }

        public Block(KaitaiStream _io, ParamsPassStruct _parent, ParamsPassStruct _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.foo = this._io.readU1();
        }
        private int foo;
        private ParamsPassStruct _root;
        private ParamsPassStruct _parent;
        public int foo() { return foo; }
        public ParamsPassStruct _root() { return _root; }
        public ParamsPassStruct _parent() { return _parent; }
    }
    public static class StructType extends KaitaiStruct {

        public StructType(KaitaiStream _io, KaitaiStruct foo) {
            this(_io, null, null, foo);
        }

        public StructType(KaitaiStream _io, ParamsPassStruct _parent, KaitaiStruct foo) {
            this(_io, _parent, null, foo);
        }

        public StructType(KaitaiStream _io, ParamsPassStruct _parent, ParamsPassStruct _root, KaitaiStruct foo) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.foo = foo;
            _read();
        }
        private void _read() {
            this.bar = new Baz(this._io, this, _root, foo());
        }
        public static class Baz extends KaitaiStruct {

            public Baz(KaitaiStream _io, KaitaiStruct foo) {
                this(_io, null, null, foo);
            }

            public Baz(KaitaiStream _io, ParamsPassStruct.StructType _parent, KaitaiStruct foo) {
                this(_io, _parent, null, foo);
            }

            public Baz(KaitaiStream _io, ParamsPassStruct.StructType _parent, ParamsPassStruct _root, KaitaiStruct foo) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                this.foo = foo;
                _read();
            }
            private void _read() {
                this.qux = this._io.readU1();
            }
            private int qux;
            private KaitaiStruct foo;
            private ParamsPassStruct _root;
            private ParamsPassStruct.StructType _parent;
            public int qux() { return qux; }
            public KaitaiStruct foo() { return foo; }
            public ParamsPassStruct _root() { return _root; }
            public ParamsPassStruct.StructType _parent() { return _parent; }
        }
        private Baz bar;
        private KaitaiStruct foo;
        private ParamsPassStruct _root;
        private ParamsPassStruct _parent;
        public Baz bar() { return bar; }
        public KaitaiStruct foo() { return foo; }
        public ParamsPassStruct _root() { return _root; }
        public ParamsPassStruct _parent() { return _parent; }
    }
    private Block first;
    private StructType one;
    private ParamsPassStruct _root;
    private KaitaiStruct _parent;
    public Block first() { return first; }
    public StructType one() { return one; }
    public ParamsPassStruct _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
