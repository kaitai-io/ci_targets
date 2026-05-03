// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;
import java.util.HashMap;
import io.kaitai.struct.IKaitaiEnum;

public class Enum1 extends KaitaiStruct.ReadWrite {
    public static Enum1 fromFile(String fileName) throws IOException {
        return new Enum1(new ByteBufferKaitaiStream(fileName));
    }
    public Enum1() {
        this(null, null, null);
    }

    public Enum1(KaitaiStream _io) {
        this(_io, null, null);
    }

    public Enum1(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public Enum1(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, Enum1 _root) {
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
            throw new ConsistencyError("main", _root(), this.main._root());
        if (!Objects.equals(this.main._parent(), this))
            throw new ConsistencyError("main", this, this.main._parent());
        _dirty = false;
    }
    public static class MainObj extends KaitaiStruct.ReadWrite {
        public static MainObj fromFile(String fileName) throws IOException {
            return new MainObj(new ByteBufferKaitaiStream(fileName));
        }

        public interface IAnimal extends IKaitaiEnum {
            public static final class Unknown extends IKaitaiEnum.Unknown implements IAnimal {
                Unknown(long id) { super(id); }

                @Override
                public String toString() { return "Animal(" + this.id + ")"; }

                @Override
                public int hashCode() {
                    final int result = 31 + "Animal".hashCode();
                    return 31 * result + Long.hashCode(this.id);
                }

                @Override
                public boolean equals(Object other) {
                    return other instanceof IAnimal.Unknown && this.id == ((IAnimal.Unknown)other).id;
                }
            }
        }
        public enum Animal implements IAnimal {
            DOG(4),
            CAT(7),
            CHICKEN(12);

            private final long id;
            private static final HashMap<Long, IAnimal> variants = new HashMap<>(3);
            static {
                for (Animal e : values()) {
                    variants.put(e.id, e);
                }
            }

            public static IAnimal byId(final long id) {
                return variants.computeIfAbsent(id, _id -> new IAnimal.Unknown(id));
            }

            private Animal(long id) { this.id = id; }

            @Override
            public long id() { return id; }
        }
        public MainObj() {
            this(null, null, null);
        }

        public MainObj(KaitaiStream _io) {
            this(_io, null, null);
        }

        public MainObj(KaitaiStream _io, Enum1 _parent) {
            this(_io, _parent, null);
        }

        public MainObj(KaitaiStream _io, Enum1 _parent, Enum1 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.submain = new SubmainObj(this._io, this, _root);
            this.submain._read();
            _dirty = false;
        }

        public void _fetchInstances() {
            this.submain._fetchInstances();
        }

        public void _write_Seq() {
            _assertNotDirty();
            this.submain._write_Seq(this._io);
        }

        public void _check() {
            if (!Objects.equals(this.submain._root(), _root()))
                throw new ConsistencyError("submain", _root(), this.submain._root());
            if (!Objects.equals(this.submain._parent(), this))
                throw new ConsistencyError("submain", this, this.submain._parent());
            _dirty = false;
        }
        public static class SubmainObj extends KaitaiStruct.ReadWrite {
            public static SubmainObj fromFile(String fileName) throws IOException {
                return new SubmainObj(new ByteBufferKaitaiStream(fileName));
            }
            public SubmainObj() {
                this(null, null, null);
            }

            public SubmainObj(KaitaiStream _io) {
                this(_io, null, null);
            }

            public SubmainObj(KaitaiStream _io, Enum1.MainObj _parent) {
                this(_io, _parent, null);
            }

            public SubmainObj(KaitaiStream _io, Enum1.MainObj _parent, Enum1 _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                this.pet1 = Enum1.MainObj.Animal.byId(this._io.readU4le());
                this.pet2 = Enum1.MainObj.Animal.byId(this._io.readU4le());
                _dirty = false;
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
                _assertNotDirty();
                this._io.writeU4le(((Number) (this.pet1.id())).longValue());
                this._io.writeU4le(((Number) (this.pet2.id())).longValue());
            }

            public void _check() {
                _dirty = false;
            }
            public IAnimal pet1() { return pet1; }
            public void setPet1(IAnimal _v) { _dirty = true; pet1 = _v; }
            public IAnimal pet2() { return pet2; }
            public void setPet2(IAnimal _v) { _dirty = true; pet2 = _v; }
            public Enum1 _root() { return _root; }
            public void set_root(Enum1 _v) { _dirty = true; _root = _v; }
            public Enum1.MainObj _parent() { return _parent; }
            public void set_parent(Enum1.MainObj _v) { _dirty = true; _parent = _v; }
            private IAnimal pet1;
            private IAnimal pet2;
            private Enum1 _root;
            private Enum1.MainObj _parent;
        }
        public SubmainObj submain() { return submain; }
        public void setSubmain(SubmainObj _v) { _dirty = true; submain = _v; }
        public Enum1 _root() { return _root; }
        public void set_root(Enum1 _v) { _dirty = true; _root = _v; }
        public Enum1 _parent() { return _parent; }
        public void set_parent(Enum1 _v) { _dirty = true; _parent = _v; }
        private SubmainObj submain;
        private Enum1 _root;
        private Enum1 _parent;
    }
    public MainObj main() { return main; }
    public void setMain(MainObj _v) { _dirty = true; main = _v; }
    public Enum1 _root() { return _root; }
    public void set_root(Enum1 _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private MainObj main;
    private Enum1 _root;
    private KaitaiStruct.ReadWrite _parent;
}
