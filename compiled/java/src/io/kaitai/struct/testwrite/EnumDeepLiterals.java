// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;

public class EnumDeepLiterals extends KaitaiStruct.ReadWrite {
    public static EnumDeepLiterals fromFile(String fileName) throws IOException {
        return new EnumDeepLiterals(new ByteBufferKaitaiStream(fileName));
    }
    public EnumDeepLiterals() {
        this(null, null, null);
    }

    public EnumDeepLiterals(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EnumDeepLiterals(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public EnumDeepLiterals(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EnumDeepLiterals _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.pet1 = Container1.Animal.byId(this._io.readU4le());
        this.pet2 = Container1.Container2.Animal.byId(this._io.readU4le());
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeU4le(((Number) (this.pet1.id())).longValue());
        this._io.writeU4le(((Number) (this.pet2.id())).longValue());
    }

    public void _check() {
    }
    public static class Container1 extends KaitaiStruct.ReadWrite {
        public static Container1 fromFile(String fileName) throws IOException {
            return new Container1(new ByteBufferKaitaiStream(fileName));
        }

        public enum Animal {
            DOG(4),
            CAT(7),
            CHICKEN(12);

            private final long id;
            Animal(long id) { this.id = id; }
            public long id() { return id; }
            private static final Map<Long, Animal> byId = new HashMap<Long, Animal>(3);
            static {
                for (Animal e : Animal.values())
                    byId.put(e.id(), e);
            }
            public static Animal byId(long id) { return byId.get(id); }
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

        public Container1(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EnumDeepLiterals _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
        }

        public void _check() {
        }
        public static class Container2 extends KaitaiStruct.ReadWrite {
            public static Container2 fromFile(String fileName) throws IOException {
                return new Container2(new ByteBufferKaitaiStream(fileName));
            }

            public enum Animal {
                CANARY(4),
                TURTLE(7),
                HARE(12);

                private final long id;
                Animal(long id) { this.id = id; }
                public long id() { return id; }
                private static final Map<Long, Animal> byId = new HashMap<Long, Animal>(3);
                static {
                    for (Animal e : Animal.values())
                        byId.put(e.id(), e);
                }
                public static Animal byId(long id) { return byId.get(id); }
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

            public Container2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EnumDeepLiterals _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
            }

            public void _check() {
            }
            private EnumDeepLiterals _root;
            private KaitaiStruct.ReadWrite _parent;
            public EnumDeepLiterals _root() { return _root; }
            public void set_root(EnumDeepLiterals _v) { _root = _v; }
            public KaitaiStruct.ReadWrite _parent() { return _parent; }
            public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
        }
        private EnumDeepLiterals _root;
        private KaitaiStruct.ReadWrite _parent;
        public EnumDeepLiterals _root() { return _root; }
        public void set_root(EnumDeepLiterals _v) { _root = _v; }
        public KaitaiStruct.ReadWrite _parent() { return _parent; }
        public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
    }
    private Boolean isPet1Ok;
    public Boolean isPet1Ok() {
        if (this.isPet1Ok != null)
            return this.isPet1Ok;
        this.isPet1Ok = pet1() == Container1.Animal.CAT;
        return this.isPet1Ok;
    }
    public void _invalidateIsPet1Ok() { this.isPet1Ok = null; }
    private Boolean isPet2Ok;
    public Boolean isPet2Ok() {
        if (this.isPet2Ok != null)
            return this.isPet2Ok;
        this.isPet2Ok = pet2() == Container1.Container2.Animal.HARE;
        return this.isPet2Ok;
    }
    public void _invalidateIsPet2Ok() { this.isPet2Ok = null; }
    private Container1.Animal pet1;
    private Container1.Container2.Animal pet2;
    private EnumDeepLiterals _root;
    private KaitaiStruct.ReadWrite _parent;
    public Container1.Animal pet1() { return pet1; }
    public void setPet1(Container1.Animal _v) { pet1 = _v; }
    public Container1.Container2.Animal pet2() { return pet2; }
    public void setPet2(Container1.Container2.Animal _v) { pet2 = _v; }
    public EnumDeepLiterals _root() { return _root; }
    public void set_root(EnumDeepLiterals _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
