// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class NestedSameName extends KaitaiStruct {
    public static NestedSameName fromFile(String fileName) throws IOException {
        return new NestedSameName(new KaitaiStream(fileName));
    }

    public NestedSameName(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public NestedSameName(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public NestedSameName(KaitaiStream _io, KaitaiStruct _parent, NestedSameName _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
        this.mainData = new Main(this._io, this, _root);
        this.dummy = new DummyObj(this._io, this, _root);
    }
    public static class Main extends KaitaiStruct {
        public static Main fromFile(String fileName) throws IOException {
            return new Main(new KaitaiStream(fileName));
        }

        public Main(KaitaiStream _io) {
            super(_io);
            _read();
        }

        public Main(KaitaiStream _io, NestedSameName _parent) {
            super(_io);
            this._parent = _parent;
            _read();
        }

        public Main(KaitaiStream _io, NestedSameName _parent, NestedSameName _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.mainSize = this._io.readS4le();
            this.foo = new FooObj(this._io, this, _root);
        }
        public static class FooObj extends KaitaiStruct {
            public static FooObj fromFile(String fileName) throws IOException {
                return new FooObj(new KaitaiStream(fileName));
            }

            public FooObj(KaitaiStream _io) {
                super(_io);
                _read();
            }

            public FooObj(KaitaiStream _io, NestedSameName.Main _parent) {
                super(_io);
                this._parent = _parent;
                _read();
            }

            public FooObj(KaitaiStream _io, NestedSameName.Main _parent, NestedSameName _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.data = this._io.readBytes((_parent().mainSize() * 2));
            }
            private byte[] data;
            private NestedSameName _root;
            private NestedSameName.Main _parent;
            public byte[] data() { return data; }
            public NestedSameName _root() { return _root; }
            public NestedSameName.Main _parent() { return _parent; }
        }
        private int mainSize;
        private FooObj foo;
        private NestedSameName _root;
        private NestedSameName _parent;
        public int mainSize() { return mainSize; }
        public FooObj foo() { return foo; }
        public NestedSameName _root() { return _root; }
        public NestedSameName _parent() { return _parent; }
    }
    public static class DummyObj extends KaitaiStruct {
        public static DummyObj fromFile(String fileName) throws IOException {
            return new DummyObj(new KaitaiStream(fileName));
        }

        public DummyObj(KaitaiStream _io) {
            super(_io);
            _read();
        }

        public DummyObj(KaitaiStream _io, NestedSameName _parent) {
            super(_io);
            this._parent = _parent;
            _read();
        }

        public DummyObj(KaitaiStream _io, NestedSameName _parent, NestedSameName _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
        }
        public static class Foo extends KaitaiStruct {
            public static Foo fromFile(String fileName) throws IOException {
                return new Foo(new KaitaiStream(fileName));
            }

            public Foo(KaitaiStream _io) {
                super(_io);
                _read();
            }

            public Foo(KaitaiStream _io, KaitaiStruct _parent) {
                super(_io);
                this._parent = _parent;
                _read();
            }

            public Foo(KaitaiStream _io, KaitaiStruct _parent, NestedSameName _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
            }
            private NestedSameName _root;
            private KaitaiStruct _parent;
            public NestedSameName _root() { return _root; }
            public KaitaiStruct _parent() { return _parent; }
        }
        private NestedSameName _root;
        private NestedSameName _parent;
        public NestedSameName _root() { return _root; }
        public NestedSameName _parent() { return _parent; }
    }
    private Main mainData;
    private DummyObj dummy;
    private NestedSameName _root;
    private KaitaiStruct _parent;
    public Main mainData() { return mainData; }
    public DummyObj dummy() { return dummy; }
    public NestedSameName _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
