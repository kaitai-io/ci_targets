// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class NestedSameName2 extends KaitaiStruct {
    public static NestedSameName2 fromFile(String fileName) throws IOException {
        return new NestedSameName2(new KaitaiStream(fileName));
    }

    public NestedSameName2(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NestedSameName2(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public NestedSameName2(KaitaiStream _io, KaitaiStruct _parent, NestedSameName2 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.version = this._io.readU4le();
        this.mainData = new Main(this._io, this, _root);
        this.dummy = new DummyObj(this._io, this, _root);
    }
    public static class Main extends KaitaiStruct {
        public static Main fromFile(String fileName) throws IOException {
            return new Main(new KaitaiStream(fileName));
        }

        public Main(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Main(KaitaiStream _io, NestedSameName2 _parent) {
            this(_io, _parent, null);
        }

        public Main(KaitaiStream _io, NestedSameName2 _parent, NestedSameName2 _root) {
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
                this(_io, null, null);
            }

            public FooObj(KaitaiStream _io, NestedSameName2.Main _parent) {
                this(_io, _parent, null);
            }

            public FooObj(KaitaiStream _io, NestedSameName2.Main _parent, NestedSameName2 _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.data1 = this._io.readBytes((_parent().mainSize() * 2));
            }
            private byte[] data1;
            private NestedSameName2 _root;
            private NestedSameName2.Main _parent;
            public byte[] data1() { return data1; }
            public NestedSameName2 _root() { return _root; }
            public NestedSameName2.Main _parent() { return _parent; }
        }
        private int mainSize;
        private FooObj foo;
        private NestedSameName2 _root;
        private NestedSameName2 _parent;
        public int mainSize() { return mainSize; }
        public FooObj foo() { return foo; }
        public NestedSameName2 _root() { return _root; }
        public NestedSameName2 _parent() { return _parent; }
    }
    public static class DummyObj extends KaitaiStruct {
        public static DummyObj fromFile(String fileName) throws IOException {
            return new DummyObj(new KaitaiStream(fileName));
        }

        public DummyObj(KaitaiStream _io) {
            this(_io, null, null);
        }

        public DummyObj(KaitaiStream _io, NestedSameName2 _parent) {
            this(_io, _parent, null);
        }

        public DummyObj(KaitaiStream _io, NestedSameName2 _parent, NestedSameName2 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.dummySize = this._io.readS4le();
            this.foo = new FooObj(this._io, this, _root);
        }
        public static class FooObj extends KaitaiStruct {
            public static FooObj fromFile(String fileName) throws IOException {
                return new FooObj(new KaitaiStream(fileName));
            }

            public FooObj(KaitaiStream _io) {
                this(_io, null, null);
            }

            public FooObj(KaitaiStream _io, NestedSameName2.DummyObj _parent) {
                this(_io, _parent, null);
            }

            public FooObj(KaitaiStream _io, NestedSameName2.DummyObj _parent, NestedSameName2 _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.data2 = this._io.readBytes((_parent().dummySize() * 2));
            }
            private byte[] data2;
            private NestedSameName2 _root;
            private NestedSameName2.DummyObj _parent;
            public byte[] data2() { return data2; }
            public NestedSameName2 _root() { return _root; }
            public NestedSameName2.DummyObj _parent() { return _parent; }
        }
        private int dummySize;
        private FooObj foo;
        private NestedSameName2 _root;
        private NestedSameName2 _parent;
        public int dummySize() { return dummySize; }
        public FooObj foo() { return foo; }
        public NestedSameName2 _root() { return _root; }
        public NestedSameName2 _parent() { return _parent; }
    }
    private long version;
    private Main mainData;
    private DummyObj dummy;
    private NestedSameName2 _root;
    private KaitaiStruct _parent;
    public long version() { return version; }
    public Main mainData() { return mainData; }
    public DummyObj dummy() { return dummy; }
    public NestedSameName2 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
