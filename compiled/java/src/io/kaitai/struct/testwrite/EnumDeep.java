// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import io.kaitai.struct.IKaitaiEnum;

public class EnumDeep extends KaitaiStruct.ReadWrite {
    public static EnumDeep fromFile(String fileName) throws IOException {
        return new EnumDeep(new ByteBufferKaitaiStream(fileName));
    }
    public EnumDeep() {
        this(null, null, null);
    }

    public EnumDeep(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EnumDeep(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public EnumDeep(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EnumDeep _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.pet1 = Container1.Animal.byId(this._io.readU4le());
        this.pet2 = Container1.Container2.Animal.byId(this._io.readU4le());
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
    public static class Container1 extends KaitaiStruct.ReadWrite {
        public static Container1 fromFile(String fileName) throws IOException {
            return new Container1(new ByteBufferKaitaiStream(fileName));
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
        public Container1() {
            this(null, null, null);
        }

        public Container1(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Container1(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
            this(_io, _parent, null);
        }

        public Container1(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EnumDeep _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
        }

        public void _check() {
            _dirty = false;
        }
        public static class Container2 extends KaitaiStruct.ReadWrite {
            public static Container2 fromFile(String fileName) throws IOException {
                return new Container2(new ByteBufferKaitaiStream(fileName));
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
                CANARY(4),
                TURTLE(7),
                HARE(12);

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
            public Container2() {
                this(null, null, null);
            }

            public Container2(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Container2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
                this(_io, _parent, null);
            }

            public Container2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EnumDeep _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                _dirty = false;
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
                _assertNotDirty();
            }

            public void _check() {
                _dirty = false;
            }
            public EnumDeep _root() { return _root; }
            public void set_root(EnumDeep _v) { _dirty = true; _root = _v; }
            public KaitaiStruct.ReadWrite _parent() { return _parent; }
            public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
            private EnumDeep _root;
            private KaitaiStruct.ReadWrite _parent;
        }
        public EnumDeep _root() { return _root; }
        public void set_root(EnumDeep _v) { _dirty = true; _root = _v; }
        public KaitaiStruct.ReadWrite _parent() { return _parent; }
        public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
        private EnumDeep _root;
        private KaitaiStruct.ReadWrite _parent;
    }
    public Container1.IAnimal pet1() { return pet1; }
    public void setPet1(Container1.IAnimal _v) { _dirty = true; pet1 = _v; }
    public Container1.Container2.IAnimal pet2() { return pet2; }
    public void setPet2(Container1.Container2.IAnimal _v) { _dirty = true; pet2 = _v; }
    public EnumDeep _root() { return _root; }
    public void set_root(EnumDeep _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private Container1.IAnimal pet1;
    private Container1.Container2.IAnimal pet2;
    private EnumDeep _root;
    private KaitaiStruct.ReadWrite _parent;
}
