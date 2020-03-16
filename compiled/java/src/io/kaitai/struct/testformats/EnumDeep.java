// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;

public class EnumDeep extends KaitaiStruct {
    public static EnumDeep fromFile(String fileName) throws IOException {
        return new EnumDeep(new ByteBufferKaitaiStream(fileName));
    }

    public EnumDeep(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EnumDeep(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public EnumDeep(KaitaiStream _io, KaitaiStruct _parent, EnumDeep _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.pet1 = Container1.Animal.byId(this._io.readU4le());
        this.pet2 = Container1.Container2.Animal.byId(this._io.readU4le());
    }
    public static class Container1 extends KaitaiStruct {
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

        public Container1(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Container1(KaitaiStream _io, KaitaiStruct _parent) {
            this(_io, _parent, null);
        }

        public Container1(KaitaiStream _io, KaitaiStruct _parent, EnumDeep _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
        }
        public static class Container2 extends KaitaiStruct {
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

            public Container2(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Container2(KaitaiStream _io, KaitaiStruct _parent) {
                this(_io, _parent, null);
            }

            public Container2(KaitaiStream _io, KaitaiStruct _parent, EnumDeep _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
            }
            private EnumDeep _root;
            private KaitaiStruct _parent;
            public EnumDeep _root() { return _root; }
            public KaitaiStruct _parent() { return _parent; }
        }
        private EnumDeep _root;
        private KaitaiStruct _parent;
        public EnumDeep _root() { return _root; }
        public KaitaiStruct _parent() { return _parent; }
    }
    private Container1.Animal pet1;
    private Container1.Container2.Animal pet2;
    private EnumDeep _root;
    private KaitaiStruct _parent;
    public Container1.Animal pet1() { return pet1; }
    public Container1.Container2.Animal pet2() { return pet2; }
    public EnumDeep _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
