// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class ParamsPassStruct extends KaitaiStruct.ReadWrite {
    public static ParamsPassStruct fromFile(String fileName) throws IOException {
        return new ParamsPassStruct(new ByteBufferKaitaiStream(fileName));
    }
    public ParamsPassStruct() {
        this(null, null, null);
    }

    public ParamsPassStruct(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ParamsPassStruct(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ParamsPassStruct(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ParamsPassStruct _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.first = new Block(this._io, this, _root);
        this.first._read();
        this.one = new StructType(this._io, this, _root, first());
        this.one._read();
    }

    public void _fetchInstances() {
        this.first._fetchInstances();
        this.one._fetchInstances();
    }

    public void _write_Seq() {
        this.first._write_Seq(this._io);
        this.one._write_Seq(this._io);
    }

    public void _check() {
        if (!Objects.equals(this.first._root(), _root()))
            throw new ConsistencyError("first", this.first._root(), _root());
        if (!Objects.equals(this.first._parent(), this))
            throw new ConsistencyError("first", this.first._parent(), this);
        if (!Objects.equals(this.one._root(), _root()))
            throw new ConsistencyError("one", this.one._root(), _root());
        if (!Objects.equals(this.one._parent(), this))
            throw new ConsistencyError("one", this.one._parent(), this);
        if (!Objects.equals(this.one.foo(), first()))
            throw new ConsistencyError("one", this.one.foo(), first());
    }
    public static class Block extends KaitaiStruct.ReadWrite {
        public static Block fromFile(String fileName) throws IOException {
            return new Block(new ByteBufferKaitaiStream(fileName));
        }
        public Block() {
            this(null, null, null);
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
        }
        public void _read() {
            this.foo = this._io.readU1();
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeU1(this.foo);
        }

        public void _check() {
        }
        private int foo;
        private ParamsPassStruct _root;
        private ParamsPassStruct _parent;
        public int foo() { return foo; }
        public void setFoo(int _v) { foo = _v; }
        public ParamsPassStruct _root() { return _root; }
        public void set_root(ParamsPassStruct _v) { _root = _v; }
        public ParamsPassStruct _parent() { return _parent; }
        public void set_parent(ParamsPassStruct _v) { _parent = _v; }
    }
    public static class StructType extends KaitaiStruct.ReadWrite {
        public StructType(KaitaiStruct.ReadWrite foo) {
            this(null, null, null, foo);
        }

        public StructType(KaitaiStream _io, KaitaiStruct.ReadWrite foo) {
            this(_io, null, null, foo);
        }

        public StructType(KaitaiStream _io, ParamsPassStruct _parent, KaitaiStruct.ReadWrite foo) {
            this(_io, _parent, null, foo);
        }

        public StructType(KaitaiStream _io, ParamsPassStruct _parent, ParamsPassStruct _root, KaitaiStruct.ReadWrite foo) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.foo = foo;
        }
        public void _read() {
            this.bar = new Baz(this._io, this, _root, foo());
            this.bar._read();
        }

        public void _fetchInstances() {
            this.bar._fetchInstances();
        }

        public void _write_Seq() {
            this.bar._write_Seq(this._io);
        }

        public void _check() {
            if (!Objects.equals(this.bar._root(), _root()))
                throw new ConsistencyError("bar", this.bar._root(), _root());
            if (!Objects.equals(this.bar._parent(), this))
                throw new ConsistencyError("bar", this.bar._parent(), this);
            if (!Objects.equals(this.bar.foo(), foo()))
                throw new ConsistencyError("bar", this.bar.foo(), foo());
        }
        public static class Baz extends KaitaiStruct.ReadWrite {
            public Baz(KaitaiStruct.ReadWrite foo) {
                this(null, null, null, foo);
            }

            public Baz(KaitaiStream _io, KaitaiStruct.ReadWrite foo) {
                this(_io, null, null, foo);
            }

            public Baz(KaitaiStream _io, ParamsPassStruct.StructType _parent, KaitaiStruct.ReadWrite foo) {
                this(_io, _parent, null, foo);
            }

            public Baz(KaitaiStream _io, ParamsPassStruct.StructType _parent, ParamsPassStruct _root, KaitaiStruct.ReadWrite foo) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                this.foo = foo;
            }
            public void _read() {
                this.qux = this._io.readU1();
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
                this._io.writeU1(this.qux);
            }

            public void _check() {
            }
            private int qux;
            private KaitaiStruct.ReadWrite foo;
            private ParamsPassStruct _root;
            private ParamsPassStruct.StructType _parent;
            public int qux() { return qux; }
            public void setQux(int _v) { qux = _v; }
            public KaitaiStruct.ReadWrite foo() { return foo; }
            public void setFoo(KaitaiStruct.ReadWrite _v) { foo = _v; }
            public ParamsPassStruct _root() { return _root; }
            public void set_root(ParamsPassStruct _v) { _root = _v; }
            public ParamsPassStruct.StructType _parent() { return _parent; }
            public void set_parent(ParamsPassStruct.StructType _v) { _parent = _v; }
        }
        private Baz bar;
        private KaitaiStruct.ReadWrite foo;
        private ParamsPassStruct _root;
        private ParamsPassStruct _parent;
        public Baz bar() { return bar; }
        public void setBar(Baz _v) { bar = _v; }
        public KaitaiStruct.ReadWrite foo() { return foo; }
        public void setFoo(KaitaiStruct.ReadWrite _v) { foo = _v; }
        public ParamsPassStruct _root() { return _root; }
        public void set_root(ParamsPassStruct _v) { _root = _v; }
        public ParamsPassStruct _parent() { return _parent; }
        public void set_parent(ParamsPassStruct _v) { _parent = _v; }
    }
    private Block first;
    private StructType one;
    private ParamsPassStruct _root;
    private KaitaiStruct.ReadWrite _parent;
    public Block first() { return first; }
    public void setFirst(Block _v) { first = _v; }
    public StructType one() { return one; }
    public void setOne(StructType _v) { one = _v; }
    public ParamsPassStruct _root() { return _root; }
    public void set_root(ParamsPassStruct _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
