// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;

public class EnumInvalid extends KaitaiStruct {
    public static EnumInvalid fromFile(String fileName) throws IOException {
        return new EnumInvalid(new ByteBufferKaitaiStream(fileName));
    }

    public enum Animal {
        DOG(102),
        CAT(124);

        private final long id;
        Animal(long id) { this.id = id; }
        public long id() { return id; }
        private static final Map<Long, Animal> byId = new HashMap<Long, Animal>(2);
        static {
            for (Animal e : Animal.values())
                byId.put(e.id(), e);
        }
        public static Animal byId(long id) { return byId.get(id); }
    }

    public EnumInvalid(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EnumInvalid(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public EnumInvalid(KaitaiStream _io, KaitaiStruct _parent, EnumInvalid _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.pet1 = Animal.byId(this._io.readU1());
        this.pet2 = Animal.byId(this._io.readU1());
    }
    private Animal pet1;
    private Animal pet2;
    private EnumInvalid _root;
    private KaitaiStruct _parent;
    public Animal pet1() { return pet1; }
    public Animal pet2() { return pet2; }
    public EnumInvalid _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
