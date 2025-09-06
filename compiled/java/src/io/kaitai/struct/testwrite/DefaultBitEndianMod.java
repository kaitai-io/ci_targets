// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class DefaultBitEndianMod extends KaitaiStruct.ReadWrite {
    public static DefaultBitEndianMod fromFile(String fileName) throws IOException {
        return new DefaultBitEndianMod(new ByteBufferKaitaiStream(fileName));
    }
    public DefaultBitEndianMod() {
        this(null, null, null);
    }

    public DefaultBitEndianMod(KaitaiStream _io) {
        this(_io, null, null);
    }

    public DefaultBitEndianMod(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public DefaultBitEndianMod(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, DefaultBitEndianMod _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.main = new MainObj(this._io, this, _root);
        this.main._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.main._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this.main._write_Seq(this._io);
    }

    public void _check() {
        if (!Objects.equals(this.main._root(), _root()))
            throw new ConsistencyError("main", this.main._root(), _root());
        if (!Objects.equals(this.main._parent(), this))
            throw new ConsistencyError("main", this.main._parent(), this);
        _dirty = false;
    }
    public static class MainObj extends KaitaiStruct.ReadWrite {
        public static MainObj fromFile(String fileName) throws IOException {
            return new MainObj(new ByteBufferKaitaiStream(fileName));
        }
        public MainObj() {
            this(null, null, null);
        }

        public MainObj(KaitaiStream _io) {
            this(_io, null, null);
        }

        public MainObj(KaitaiStream _io, DefaultBitEndianMod _parent) {
            this(_io, _parent, null);
        }

        public MainObj(KaitaiStream _io, DefaultBitEndianMod _parent, DefaultBitEndianMod _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.one = this._io.readBitsIntLe(9);
            this.two = this._io.readBitsIntLe(15);
            this.nest = new Subnest(this._io, this, _root);
            this.nest._read();
            this.nestBe = new SubnestBe(this._io, this, _root);
            this.nestBe._read();
            _dirty = false;
        }

        public void _fetchInstances() {
            this.nest._fetchInstances();
            this.nestBe._fetchInstances();
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBitsIntLe(9, this.one);
            this._io.writeBitsIntLe(15, this.two);
            this.nest._write_Seq(this._io);
            this.nestBe._write_Seq(this._io);
        }

        public void _check() {
            if (!Objects.equals(this.nest._root(), _root()))
                throw new ConsistencyError("nest", this.nest._root(), _root());
            if (!Objects.equals(this.nest._parent(), this))
                throw new ConsistencyError("nest", this.nest._parent(), this);
            if (!Objects.equals(this.nestBe._root(), _root()))
                throw new ConsistencyError("nest_be", this.nestBe._root(), _root());
            if (!Objects.equals(this.nestBe._parent(), this))
                throw new ConsistencyError("nest_be", this.nestBe._parent(), this);
            _dirty = false;
        }
        public static class Subnest extends KaitaiStruct.ReadWrite {
            public static Subnest fromFile(String fileName) throws IOException {
                return new Subnest(new ByteBufferKaitaiStream(fileName));
            }
            public Subnest() {
                this(null, null, null);
            }

            public Subnest(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Subnest(KaitaiStream _io, DefaultBitEndianMod.MainObj _parent) {
                this(_io, _parent, null);
            }

            public Subnest(KaitaiStream _io, DefaultBitEndianMod.MainObj _parent, DefaultBitEndianMod _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                this.two = this._io.readBitsIntLe(16);
                _dirty = false;
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
                _assertNotDirty();
                this._io.writeBitsIntLe(16, this.two);
            }

            public void _check() {
                _dirty = false;
            }
            private long two;
            private DefaultBitEndianMod _root;
            private DefaultBitEndianMod.MainObj _parent;
            public long two() { return two; }
            public void setTwo(long _v) { _dirty = true; two = _v; }
            public DefaultBitEndianMod _root() { return _root; }
            public void set_root(DefaultBitEndianMod _v) { _dirty = true; _root = _v; }
            public DefaultBitEndianMod.MainObj _parent() { return _parent; }
            public void set_parent(DefaultBitEndianMod.MainObj _v) { _dirty = true; _parent = _v; }
        }
        public static class SubnestBe extends KaitaiStruct.ReadWrite {
            public static SubnestBe fromFile(String fileName) throws IOException {
                return new SubnestBe(new ByteBufferKaitaiStream(fileName));
            }
            public SubnestBe() {
                this(null, null, null);
            }

            public SubnestBe(KaitaiStream _io) {
                this(_io, null, null);
            }

            public SubnestBe(KaitaiStream _io, DefaultBitEndianMod.MainObj _parent) {
                this(_io, _parent, null);
            }

            public SubnestBe(KaitaiStream _io, DefaultBitEndianMod.MainObj _parent, DefaultBitEndianMod _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                this.two = this._io.readBitsIntBe(16);
                _dirty = false;
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
                _assertNotDirty();
                this._io.writeBitsIntBe(16, this.two);
            }

            public void _check() {
                _dirty = false;
            }
            private long two;
            private DefaultBitEndianMod _root;
            private DefaultBitEndianMod.MainObj _parent;
            public long two() { return two; }
            public void setTwo(long _v) { _dirty = true; two = _v; }
            public DefaultBitEndianMod _root() { return _root; }
            public void set_root(DefaultBitEndianMod _v) { _dirty = true; _root = _v; }
            public DefaultBitEndianMod.MainObj _parent() { return _parent; }
            public void set_parent(DefaultBitEndianMod.MainObj _v) { _dirty = true; _parent = _v; }
        }
        private long one;
        private long two;
        private Subnest nest;
        private SubnestBe nestBe;
        private DefaultBitEndianMod _root;
        private DefaultBitEndianMod _parent;
        public long one() { return one; }
        public void setOne(long _v) { _dirty = true; one = _v; }
        public long two() { return two; }
        public void setTwo(long _v) { _dirty = true; two = _v; }
        public Subnest nest() { return nest; }
        public void setNest(Subnest _v) { _dirty = true; nest = _v; }
        public SubnestBe nestBe() { return nestBe; }
        public void setNestBe(SubnestBe _v) { _dirty = true; nestBe = _v; }
        public DefaultBitEndianMod _root() { return _root; }
        public void set_root(DefaultBitEndianMod _v) { _dirty = true; _root = _v; }
        public DefaultBitEndianMod _parent() { return _parent; }
        public void set_parent(DefaultBitEndianMod _v) { _dirty = true; _parent = _v; }
    }
    private MainObj main;
    private DefaultBitEndianMod _root;
    private KaitaiStruct.ReadWrite _parent;
    public MainObj main() { return main; }
    public void setMain(MainObj _v) { _dirty = true; main = _v; }
    public DefaultBitEndianMod _root() { return _root; }
    public void set_root(DefaultBitEndianMod _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
