// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class NestedSameName2 extends KaitaiStruct.ReadWrite {
    public static NestedSameName2 fromFile(String fileName) throws IOException {
        return new NestedSameName2(new ByteBufferKaitaiStream(fileName));
    }
    public NestedSameName2() {
        this(null, null, null);
    }

    public NestedSameName2(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NestedSameName2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public NestedSameName2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NestedSameName2 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.version = this._io.readU4le();
        this.mainData = new Main(this._io, this, _root);
        this.mainData._read();
        this.dummy = new DummyObj(this._io, this, _root);
        this.dummy._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.mainData._fetchInstances();
        this.dummy._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU4le(this.version);
        this.mainData._write_Seq(this._io);
        this.dummy._write_Seq(this._io);
    }

    public void _check() {
        if (!Objects.equals(this.mainData._root(), _root()))
            throw new ConsistencyError("main_data", this.mainData._root(), _root());
        if (!Objects.equals(this.mainData._parent(), this))
            throw new ConsistencyError("main_data", this.mainData._parent(), this);
        if (!Objects.equals(this.dummy._root(), _root()))
            throw new ConsistencyError("dummy", this.dummy._root(), _root());
        if (!Objects.equals(this.dummy._parent(), this))
            throw new ConsistencyError("dummy", this.dummy._parent(), this);
        _dirty = false;
    }
    public static class DummyObj extends KaitaiStruct.ReadWrite {
        public static DummyObj fromFile(String fileName) throws IOException {
            return new DummyObj(new ByteBufferKaitaiStream(fileName));
        }
        public DummyObj() {
            this(null, null, null);
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
        }
        public void _read() {
            this.dummySize = this._io.readS4le();
            this.foo = new FooObj(this._io, this, _root);
            this.foo._read();
            _dirty = false;
        }

        public void _fetchInstances() {
            this.foo._fetchInstances();
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeS4le(this.dummySize);
            this.foo._write_Seq(this._io);
        }

        public void _check() {
            if (!Objects.equals(this.foo._root(), _root()))
                throw new ConsistencyError("foo", this.foo._root(), _root());
            if (!Objects.equals(this.foo._parent(), this))
                throw new ConsistencyError("foo", this.foo._parent(), this);
            _dirty = false;
        }
        public static class FooObj extends KaitaiStruct.ReadWrite {
            public static FooObj fromFile(String fileName) throws IOException {
                return new FooObj(new ByteBufferKaitaiStream(fileName));
            }
            public FooObj() {
                this(null, null, null);
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
            }
            public void _read() {
                this.data2 = this._io.readBytes(_parent().dummySize() * 2);
                _dirty = false;
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
                _assertNotDirty();
                this._io.writeBytes(this.data2);
            }

            public void _check() {
                if (this.data2.length != _parent().dummySize() * 2)
                    throw new ConsistencyError("data2", this.data2.length, _parent().dummySize() * 2);
                _dirty = false;
            }
            private byte[] data2;
            private NestedSameName2 _root;
            private NestedSameName2.DummyObj _parent;
            public byte[] data2() { return data2; }
            public void setData2(byte[] _v) { _dirty = true; data2 = _v; }
            public NestedSameName2 _root() { return _root; }
            public void set_root(NestedSameName2 _v) { _dirty = true; _root = _v; }
            public NestedSameName2.DummyObj _parent() { return _parent; }
            public void set_parent(NestedSameName2.DummyObj _v) { _dirty = true; _parent = _v; }
        }
        private int dummySize;
        private FooObj foo;
        private NestedSameName2 _root;
        private NestedSameName2 _parent;
        public int dummySize() { return dummySize; }
        public void setDummySize(int _v) { _dirty = true; dummySize = _v; }
        public FooObj foo() { return foo; }
        public void setFoo(FooObj _v) { _dirty = true; foo = _v; }
        public NestedSameName2 _root() { return _root; }
        public void set_root(NestedSameName2 _v) { _dirty = true; _root = _v; }
        public NestedSameName2 _parent() { return _parent; }
        public void set_parent(NestedSameName2 _v) { _dirty = true; _parent = _v; }
    }
    public static class Main extends KaitaiStruct.ReadWrite {
        public static Main fromFile(String fileName) throws IOException {
            return new Main(new ByteBufferKaitaiStream(fileName));
        }
        public Main() {
            this(null, null, null);
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
        }
        public void _read() {
            this.mainSize = this._io.readS4le();
            this.foo = new FooObj(this._io, this, _root);
            this.foo._read();
            _dirty = false;
        }

        public void _fetchInstances() {
            this.foo._fetchInstances();
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeS4le(this.mainSize);
            this.foo._write_Seq(this._io);
        }

        public void _check() {
            if (!Objects.equals(this.foo._root(), _root()))
                throw new ConsistencyError("foo", this.foo._root(), _root());
            if (!Objects.equals(this.foo._parent(), this))
                throw new ConsistencyError("foo", this.foo._parent(), this);
            _dirty = false;
        }
        public static class FooObj extends KaitaiStruct.ReadWrite {
            public static FooObj fromFile(String fileName) throws IOException {
                return new FooObj(new ByteBufferKaitaiStream(fileName));
            }
            public FooObj() {
                this(null, null, null);
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
            }
            public void _read() {
                this.data1 = this._io.readBytes(_parent().mainSize() * 2);
                _dirty = false;
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
                _assertNotDirty();
                this._io.writeBytes(this.data1);
            }

            public void _check() {
                if (this.data1.length != _parent().mainSize() * 2)
                    throw new ConsistencyError("data1", this.data1.length, _parent().mainSize() * 2);
                _dirty = false;
            }
            private byte[] data1;
            private NestedSameName2 _root;
            private NestedSameName2.Main _parent;
            public byte[] data1() { return data1; }
            public void setData1(byte[] _v) { _dirty = true; data1 = _v; }
            public NestedSameName2 _root() { return _root; }
            public void set_root(NestedSameName2 _v) { _dirty = true; _root = _v; }
            public NestedSameName2.Main _parent() { return _parent; }
            public void set_parent(NestedSameName2.Main _v) { _dirty = true; _parent = _v; }
        }
        private int mainSize;
        private FooObj foo;
        private NestedSameName2 _root;
        private NestedSameName2 _parent;
        public int mainSize() { return mainSize; }
        public void setMainSize(int _v) { _dirty = true; mainSize = _v; }
        public FooObj foo() { return foo; }
        public void setFoo(FooObj _v) { _dirty = true; foo = _v; }
        public NestedSameName2 _root() { return _root; }
        public void set_root(NestedSameName2 _v) { _dirty = true; _root = _v; }
        public NestedSameName2 _parent() { return _parent; }
        public void set_parent(NestedSameName2 _v) { _dirty = true; _parent = _v; }
    }
    private long version;
    private Main mainData;
    private DummyObj dummy;
    private NestedSameName2 _root;
    private KaitaiStruct.ReadWrite _parent;
    public long version() { return version; }
    public void setVersion(long _v) { _dirty = true; version = _v; }
    public Main mainData() { return mainData; }
    public void setMainData(Main _v) { _dirty = true; mainData = _v; }
    public DummyObj dummy() { return dummy; }
    public void setDummy(DummyObj _v) { _dirty = true; dummy = _v; }
    public NestedSameName2 _root() { return _root; }
    public void set_root(NestedSameName2 _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
