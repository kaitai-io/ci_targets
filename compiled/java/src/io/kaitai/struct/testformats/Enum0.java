// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;

public class Enum0 extends KaitaiStruct {
    public static Enum0 fromFile(String fileName) throws IOException {
        return new Enum0(new ByteBufferKaitaiStream(fileName));
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

    public Enum0(KaitaiStream _io) {
        this(_io, null, null);
    }

    public Enum0(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public Enum0(KaitaiStream _io, KaitaiStruct _parent, Enum0 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.pet1 = Animal.byId(this._io.readU4le());
        this.pet2 = Animal.byId(this._io.readU4le());
    }
    private Animal pet1;
    private Animal pet2;
    private Enum0 _root;
    private KaitaiStruct _parent;
    public Animal pet1() { return pet1; }
    public Animal pet2() { return pet2; }
    public Enum0 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
