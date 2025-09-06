// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class DefaultEndianMod extends KaitaiStruct.ReadWrite {
    public static DefaultEndianMod fromFile(String fileName) throws IOException {
        return new DefaultEndianMod(new ByteBufferKaitaiStream(fileName));
    }
    public DefaultEndianMod() {
        this(null, null, null);
    }

    public DefaultEndianMod(KaitaiStream _io) {
        this(_io, null, null);
    }

    public DefaultEndianMod(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public DefaultEndianMod(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, DefaultEndianMod _root) {
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

        public MainObj(KaitaiStream _io, DefaultEndianMod _parent) {
            this(_io, _parent, null);
        }

        public MainObj(KaitaiStream _io, DefaultEndianMod _parent, DefaultEndianMod _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.one = this._io.readS4le();
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
            this._io.writeS4le(this.one);
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

            public Subnest(KaitaiStream _io, DefaultEndianMod.MainObj _parent) {
                this(_io, _parent, null);
            }

            public Subnest(KaitaiStream _io, DefaultEndianMod.MainObj _parent, DefaultEndianMod _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                this.two = this._io.readS4le();
                _dirty = false;
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
                _assertNotDirty();
                this._io.writeS4le(this.two);
            }

            public void _check() {
                _dirty = false;
            }
            private int two;
            private DefaultEndianMod _root;
            private DefaultEndianMod.MainObj _parent;
            public int two() { return two; }
            public void setTwo(int _v) { _dirty = true; two = _v; }
            public DefaultEndianMod _root() { return _root; }
            public void set_root(DefaultEndianMod _v) { _dirty = true; _root = _v; }
            public DefaultEndianMod.MainObj _parent() { return _parent; }
            public void set_parent(DefaultEndianMod.MainObj _v) { _dirty = true; _parent = _v; }
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

            public SubnestBe(KaitaiStream _io, DefaultEndianMod.MainObj _parent) {
                this(_io, _parent, null);
            }

            public SubnestBe(KaitaiStream _io, DefaultEndianMod.MainObj _parent, DefaultEndianMod _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                this.two = this._io.readS4be();
                _dirty = false;
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
                _assertNotDirty();
                this._io.writeS4be(this.two);
            }

            public void _check() {
                _dirty = false;
            }
            private int two;
            private DefaultEndianMod _root;
            private DefaultEndianMod.MainObj _parent;
            public int two() { return two; }
            public void setTwo(int _v) { _dirty = true; two = _v; }
            public DefaultEndianMod _root() { return _root; }
            public void set_root(DefaultEndianMod _v) { _dirty = true; _root = _v; }
            public DefaultEndianMod.MainObj _parent() { return _parent; }
            public void set_parent(DefaultEndianMod.MainObj _v) { _dirty = true; _parent = _v; }
        }
        private int one;
        private Subnest nest;
        private SubnestBe nestBe;
        private DefaultEndianMod _root;
        private DefaultEndianMod _parent;
        public int one() { return one; }
        public void setOne(int _v) { _dirty = true; one = _v; }
        public Subnest nest() { return nest; }
        public void setNest(Subnest _v) { _dirty = true; nest = _v; }
        public SubnestBe nestBe() { return nestBe; }
        public void setNestBe(SubnestBe _v) { _dirty = true; nestBe = _v; }
        public DefaultEndianMod _root() { return _root; }
        public void set_root(DefaultEndianMod _v) { _dirty = true; _root = _v; }
        public DefaultEndianMod _parent() { return _parent; }
        public void set_parent(DefaultEndianMod _v) { _dirty = true; _parent = _v; }
    }
    private MainObj main;
    private DefaultEndianMod _root;
    private KaitaiStruct.ReadWrite _parent;
    public MainObj main() { return main; }
    public void setMain(MainObj _v) { _dirty = true; main = _v; }
    public DefaultEndianMod _root() { return _root; }
    public void set_root(DefaultEndianMod _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
