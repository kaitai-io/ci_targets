// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;

public class Enum1 extends KaitaiStruct {
    public static Enum1 fromFile(String fileName) throws IOException {
        return new Enum1(new ByteBufferKaitaiStream(fileName));
    }

    public Enum1(KaitaiStream _io) {
        this(_io, null, null);
    }

    public Enum1(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public Enum1(KaitaiStream _io, KaitaiStruct _parent, Enum1 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.main = new MainObj(this._io, this, _root);
    }

    public void _fetchInstances() {
        this.main._fetchInstances();
    }
    public static class MainObj extends KaitaiStruct {
        public static MainObj fromFile(String fileName) throws IOException {
            return new MainObj(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            this.submain = new SubmainObj(this._io, this, _root);
        }

        public void _fetchInstances() {
            this.submain._fetchInstances();
        }
        public static class SubmainObj extends KaitaiStruct {
            public static SubmainObj fromFile(String fileName) throws IOException {
                return new SubmainObj(new ByteBufferKaitaiStream(fileName));
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
                _read();
            }
            private void _read() {
                this.pet1 = Enum1.MainObj.Animal.byId(this._io.readU4le());
                this.pet2 = Enum1.MainObj.Animal.byId(this._io.readU4le());
            }

            public void _fetchInstances() {
            }
            private Animal pet1;
            private Animal pet2;
            private Enum1 _root;
            private Enum1.MainObj _parent;
            public Animal pet1() { return pet1; }
            public Animal pet2() { return pet2; }
            public Enum1 _root() { return _root; }
            public Enum1.MainObj _parent() { return _parent; }
        }
        private SubmainObj submain;
        private Enum1 _root;
        private Enum1 _parent;
        public SubmainObj submain() { return submain; }
        public Enum1 _root() { return _root; }
        public Enum1 _parent() { return _parent; }
    }
    private MainObj main;
    private Enum1 _root;
    private KaitaiStruct _parent;
    public MainObj main() { return main; }
    public Enum1 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
