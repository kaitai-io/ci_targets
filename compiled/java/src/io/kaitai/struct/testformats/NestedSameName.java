// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class NestedSameName extends KaitaiStruct {
    public static NestedSameName fromFile(String fileName) throws IOException {
        return new NestedSameName(new ByteBufferKaitaiStream(fileName));
    }

    public NestedSameName(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NestedSameName(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public NestedSameName(KaitaiStream _io, KaitaiStruct _parent, NestedSameName _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.mainData = new Main(this._io, this, _root);
        this.dummy = new DummyObj(this._io, this, _root);
    }

    public void _fetchInstances() {
        this.mainData._fetchInstances();
        this.dummy._fetchInstances();
    }
    public static class DummyObj extends KaitaiStruct {
        public static DummyObj fromFile(String fileName) throws IOException {
            return new DummyObj(new ByteBufferKaitaiStream(fileName));
        }

        public DummyObj(KaitaiStream _io) {
            this(_io, null, null);
        }

        public DummyObj(KaitaiStream _io, NestedSameName _parent) {
            this(_io, _parent, null);
        }

        public DummyObj(KaitaiStream _io, NestedSameName _parent, NestedSameName _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
        }

        public void _fetchInstances() {
        }
        public static class Foo extends KaitaiStruct {
            public static Foo fromFile(String fileName) throws IOException {
                return new Foo(new ByteBufferKaitaiStream(fileName));
            }

            public Foo(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Foo(KaitaiStream _io, KaitaiStruct _parent) {
                this(_io, _parent, null);
            }

            public Foo(KaitaiStream _io, KaitaiStruct _parent, NestedSameName _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
            }

            public void _fetchInstances() {
            }
            public NestedSameName _root() { return _root; }
            public KaitaiStruct _parent() { return _parent; }
            private NestedSameName _root;
            private KaitaiStruct _parent;
        }
        public NestedSameName _root() { return _root; }
        public NestedSameName _parent() { return _parent; }
        private NestedSameName _root;
        private NestedSameName _parent;
    }
    public static class Main extends KaitaiStruct {
        public static Main fromFile(String fileName) throws IOException {
            return new Main(new ByteBufferKaitaiStream(fileName));
        }

        public Main(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Main(KaitaiStream _io, NestedSameName _parent) {
            this(_io, _parent, null);
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

        public void _fetchInstances() {
            this.foo._fetchInstances();
        }
        public static class FooObj extends KaitaiStruct {
            public static FooObj fromFile(String fileName) throws IOException {
                return new FooObj(new ByteBufferKaitaiStream(fileName));
            }

            public FooObj(KaitaiStream _io) {
                this(_io, null, null);
            }

            public FooObj(KaitaiStream _io, NestedSameName.Main _parent) {
                this(_io, _parent, null);
            }

            public FooObj(KaitaiStream _io, NestedSameName.Main _parent, NestedSameName _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.data = this._io.readBytes(_parent().mainSize() * 2);
            }

            public void _fetchInstances() {
            }
            public byte[] data() { return data; }
            public NestedSameName _root() { return _root; }
            public NestedSameName.Main _parent() { return _parent; }
            private byte[] data;
            private NestedSameName _root;
            private NestedSameName.Main _parent;
        }
        public int mainSize() { return mainSize; }
        public FooObj foo() { return foo; }
        public NestedSameName _root() { return _root; }
        public NestedSameName _parent() { return _parent; }
        private int mainSize;
        private FooObj foo;
        private NestedSameName _root;
        private NestedSameName _parent;
    }
    public Main mainData() { return mainData; }
    public DummyObj dummy() { return dummy; }
    public NestedSameName _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private Main mainData;
    private DummyObj dummy;
    private NestedSameName _root;
    private KaitaiStruct _parent;
}
